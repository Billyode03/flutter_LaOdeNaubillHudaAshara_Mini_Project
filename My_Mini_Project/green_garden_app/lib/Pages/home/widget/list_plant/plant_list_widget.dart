import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';
import 'package:green_garden/Pages/plant_desc_page/detail_plant_page.dart';
import 'package:green_garden/Service/get_detail_plant_service.dart';
import 'package:green_garden/Service/get_list_plant_service.dart';
import 'package:green_garden/models/detail_plant.dart';
import 'package:green_garden/models/plants_model.dart';

class PlantListWidget extends StatefulWidget {
  const PlantListWidget({Key? key});

  @override
  State<PlantListWidget> createState() => _PlantListWidgetState();
}

class _PlantListWidgetState extends State<PlantListWidget> {
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
          Container(
            height: 30,
            width: 350,
            decoration: BoxDecoration(
                color: ColorPlants.cyanPlant,
                borderRadius: BorderRadius.circular(30)),
            child: Center(
              child: Text(
                'See Plant List',
                style: TextStyleUsable.interRegularWhiteOne,
              ),
            ),
          ),
          SizedBox(
            height: 10,
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
                        onTap: () async{
                          DetailPlant selectedPlanDetail = await GetDetailPlantService().fetchDetailPlantData(plantList[index].id);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailPlantPage(
                                selectedPlant: plantList[index],
                                selectedPlanDetail: selectedPlanDetail,
                              ),
                            ),
                          );
                        },
                        child: Container(
                          width: 120,
                          margin: const EdgeInsets.symmetric(horizontal: 6),
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: CachedNetworkImage(
                                    imageUrl: plantList[index].defaultImage,
                                    fit: BoxFit.cover,
                                    placeholder: (context, url) =>
                                        LinearProgressIndicator(),
                                    errorWidget: (context, url, error) => Icon(
                                        Icons.error,
                                        color: Colors.amber,
                                        size: 48),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 25,
                                bottom: 15,
                                child: Text(
                                  plantList[index].commonName.length >= 5
                                      ? plantList[index]
                                              .commonName
                                              .substring(0, 9) +
                                          "..." // Jika teks lebih panjang dari 15 karakter, potong dan tambahkan elipsis
                                      : plantList[index]
                                          .commonName, // Jika teks tidak lebih panjang dari 15 karakter, tampilkan teks lengkap
                                  style: TextStyleUsable.interRegular,
                                  overflow: TextOverflow
                                      .ellipsis, // Menambahkan elipsis jika teks terpotong
                                  maxLines:
                                      1, // Menampilkan teks hanya dalam satu baris
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
