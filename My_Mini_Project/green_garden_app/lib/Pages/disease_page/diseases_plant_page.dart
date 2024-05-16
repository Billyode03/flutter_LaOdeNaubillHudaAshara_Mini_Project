import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/pages/disease_page/widget/diseases_header_plant.dart';
import 'package:green_garden/pages/disease_page/widget/diseases_list_plant.dart';

class DiseasePlantPage extends StatefulWidget {
  const DiseasePlantPage({super.key});

  @override
  State<DiseasePlantPage> createState() => WebArticlePlantState();
}

class WebArticlePlantState extends State<DiseasePlantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPlants.greenDark,
        elevation: 0,
      ),
      backgroundColor: ColorPlants.greenDark,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  DiseaseHeaderPlant(),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Container(
              height: 600,
              child: DiseaseListPlant(
                onItemSelected: (int index) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
