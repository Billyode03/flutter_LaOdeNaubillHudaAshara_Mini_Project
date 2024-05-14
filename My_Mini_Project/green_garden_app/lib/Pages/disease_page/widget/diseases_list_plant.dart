import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';
import 'package:green_garden/Pages/disease_page/widget/diseases_detail_plant.dart';
import 'package:green_garden/Service/get_disease_plant_service.dart';
import 'package:green_garden/models/disease_model.dart';

class DiseaseListPlant extends StatefulWidget {
  const DiseaseListPlant({super.key, required this.onItemSelected});
  final Function(int index) onItemSelected;
  @override
  State<DiseaseListPlant> createState() => _DiseasePageState();
}

class _DiseasePageState extends State<DiseaseListPlant> {
  late Future<List<DiseaseModel>> _fetchDiseaseData;

  @override
  void initState() {
    _fetchDiseaseData = GetDiseasePlantService().fetchDiseaseData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPlants.greenDark,
      body: FutureBuilder<List<DiseaseModel>>(
        future: _fetchDiseaseData,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            List<DiseaseModel> diseaseList = snapshot.data ?? [];
            return ListView.builder(
              itemCount: diseaseList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DiseasesPlantDetail(
                            selectedDisease: diseaseList[index],
                          ),
                        ));
                  },
                  child: Column(
                    children: [
                      if (diseaseList[index].images.isNotEmpty)
                        Container(
                          height: 230,
                          width: 230,
                          margin:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: ColorPlants.cyanPlant,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: ColorPlants.cyanPlant,
                                spreadRadius: 5,
                                blurRadius: 10,
                                offset: Offset(0, 5),
                              )
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Center(
                              child: CachedNetworkImage(
                                imageUrl:
                                    diseaseList[index].images.first.thumbnail,
                                fit: BoxFit.cover,
                                placeholder: (context, url) =>
                                    CircularProgressIndicator(),
                                errorWidget: (context, url, error) => Icon(
                                    Icons.error,
                                    color: Colors.red,
                                    size: 48),
                              ),
                            ),
                          ),
                        ),
                      if (diseaseList[index].images.isNotEmpty)
                        Center(
                          child: Text(
                            diseaseList[index].commonName,
                            style: TextStyleUsable.interRegularWhiteTwo,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
