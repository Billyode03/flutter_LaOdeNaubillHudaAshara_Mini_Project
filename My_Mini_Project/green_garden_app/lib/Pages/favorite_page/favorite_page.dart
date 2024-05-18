import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';
import 'package:green_garden/constant/image_constant.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPlants.greenDark,
        elevation: 0,
      ),
      backgroundColor: ColorPlants.greenDark,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ImageConstant.plantSplash,
          ),
          Center(
              child: Text(
            'Coming Soon ...',
            style: TextStyleUsable.interDescWhite,
          )),
        ],
      ),
    );
  }
}
