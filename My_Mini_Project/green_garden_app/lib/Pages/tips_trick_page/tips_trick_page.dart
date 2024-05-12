import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';
import 'package:lottie/lottie.dart';

class TipsTrickPage extends StatelessWidget {
  const TipsTrickPage({super.key});

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
            child: Lottie.asset('assets/lottie/plant.json',
                height: 200, width: 200, fit: BoxFit.cover),
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
