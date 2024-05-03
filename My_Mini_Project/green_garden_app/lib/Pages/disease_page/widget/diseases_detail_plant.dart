import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';


class DiseasesPlantDetail extends StatefulWidget {
  const DiseasesPlantDetail({super.key});

  @override
  State<DiseasesPlantDetail> createState() => _DiseasePlantDetailState();
}

class _DiseasePlantDetailState extends State<DiseasesPlantDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPlants.greenDark,
    );
  }
}