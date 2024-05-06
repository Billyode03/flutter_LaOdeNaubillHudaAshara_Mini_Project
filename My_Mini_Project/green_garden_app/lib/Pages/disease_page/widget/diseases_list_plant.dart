import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';
import 'package:green_garden/Pages/disease_page/widget/diseases_detail_plant.dart';
import 'package:green_garden/Pages/disease_page/widget/diseases_header_plant.dart';

class DiseaseListPlant extends StatefulWidget {
  const DiseaseListPlant({super.key, required this.onItemSelected});
  final Function(int index) onItemSelected;
  @override
  State<DiseaseListPlant> createState() => _DiseasePageState();
}

List<String> diseaseNames = [
  'Green Garden Canada',
  'Fine Gardening',
  'Be Green',
  'Tanduria',
  'Garden Beast',
];

List<String> diseaseData = [
  'assets/bannerList/beGarden.png',
  'assets/bannerList/fineGarden.png',
  'assets/bannerList/beGreen.png',
  'assets/bannerList/tanduria.png',
  'assets/bannerList/gardenBeast.png',
];

class _DiseasePageState extends State<DiseaseListPlant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPlants.greenDark,
      body: ListView.builder(
        itemCount: diseaseData.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DiseasesPlantDetail(),
                  ));
            },
            child: Column(
              children: [
                Container(
                  height: 150,
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 2),
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage(
                              diseaseData[index],
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Text(
                    diseaseNames[index],
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
      ),
    );
  }
}
