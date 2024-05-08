import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';
import 'package:green_garden/Pages/plant_desc_page/detail_plant_page.dart';
import 'package:green_garden/Service/get_list_plant_service.dart';
import 'package:green_garden/models/plants.dart';

class PlantListWidget extends StatefulWidget {
  const PlantListWidget({Key? key});

  @override
  State<PlantListWidget> createState() => _PlantListWidgetState();
}

class _PlantListWidgetState extends State<PlantListWidget> {
  late Future<List<PlantModel>> _plants;
  late Future<List<PlantModel>> _fetchPlantData;

  @override
  void initState() {
    _fetchPlantData = GetListPlantService().fetchPlantData();
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
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            'See Plant List',
            style: TextStyleUsable.interRegularGreenTwo,
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: FutureBuilder<List<PlantModel>>(
              future: _fetchPlantData,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text('Error : ${snapshot.error}'),
                  );
                } else {
                  List<PlantModel> plantList = snapshot.data ?? [];
                  return ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: plantList.length,
                    scrollDirection: Axis.horizontal,
                    reverse: false,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailPlantPage(),
                            ),
                          );
                        },
                        child: Container(
                          width: 200,
                          margin: const EdgeInsets.symmetric(horizontal: 98),
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
                                    plantList[index].defaultImage,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 35,
                                bottom: 15,
                                child: Text(
                                  plantList[index].commonName,
                                  style: TextStyleUsable.interRegular,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
