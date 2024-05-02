import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';

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
    );
  }
}
