import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Pages/plant_desc_page/widget/detail_plant_desc.dart';
import 'package:green_garden/Pages/plant_desc_page/widget/detail_plant_icon_desc.dart';
import 'package:green_garden/Pages/plant_desc_page/widget/detail_plant_image.dart';
import 'package:green_garden/Pages/plant_desc_page/widget/header_image_detail.dart';

class DetailPlantPage extends StatefulWidget {
  const DetailPlantPage({super.key});

  @override
  State<DetailPlantPage> createState() => _DetailPlantPageState();
}

class _DetailPlantPageState extends State<DetailPlantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPlants.greenDark,
      appBar: AppBar(
        backgroundColor: ColorPlants.greenDark,
        elevation: 0,
      ),
      body: Column(
        children: [
          DetailPlantImage(),
          SizedBox(
            height: 10,
          ),
          HeaderImageDetail(),
          SizedBox(
            height: 10,
          ),
          DetailPlantIcon(),
          SizedBox(
            height: 10,
          ),
          DetailPlantDecs(),
        ],
      ),
    );
  }
}
