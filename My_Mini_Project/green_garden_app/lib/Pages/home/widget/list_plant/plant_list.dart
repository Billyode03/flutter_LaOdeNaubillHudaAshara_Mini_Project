import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';
import 'package:green_garden/models/plant.dart';
import 'package:green_garden/models/plants.dart';

class PlantListWidget extends StatefulWidget {
  const PlantListWidget({super.key});

  @override
  State<PlantListWidget> createState() => _PlantListWidgetState();
}

class _PlantListWidgetState extends State<PlantListWidget> {
  List<PlantModels> _plantList = [];

  int selectedIndex = 0;

  Future<List<PlantModels>> fetchPlantData() async {
    try {
      Response response = await Dio().get(
          'https://perenual.com/api/species-list?key=sk-XVnP66274d86ccc3b5224');
      // Check for successful response
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.toString());
        final List<dynamic> data = jsonData['data'];
        List<PlantModels> tempList = [];
        for (var plantData in data) {
          PlantModels plant = PlantModels.fromJson(plantData);
          tempList.add(plant);
        }
        return tempList;
      } else if (response.statusCode == 429) {
        print('Error fetching plant data: Too many requests (429)');
        return []; // Return empty list on error
      } else {
        print('Error fetching plant data: Status code ${response.statusCode}');
        return []; // Return empty list on error
      }
    } catch (error) {
      print('Error fetching plant data: $error');
      return []; // Return empty list on error
    }
  }

  @override
  void initState() {
    fetchPlantData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 400,
      decoration: BoxDecoration(
        color: ColorPlants.whiteSkull,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            'See Plant List',
            style: TextStyleUsable.interRegularGreenTwo,
          ),
          SizedBox(height: 22),
          SizedBox(height: 22),
          FutureBuilder<List<PlantModels>>(
            future: fetchPlantData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                List<PlantModels> plantList = snapshot.data ?? [];
                return SizedBox(
                  height: 180,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: plantList.length,
                    scrollDirection: Axis.horizontal,
                    reverse: true,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 250,
                          margin: const EdgeInsets.symmetric(horizontal: 68),
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.network(
                                    plantList[index].imageData.originalUrl,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 95,
                                bottom: 15,
                                child: Text(
                                  plantList[index].commonName,
                                  style: TextStyle(
                                    fontFamily: 'YekanBakh',
                                    color: Colors.white70,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
