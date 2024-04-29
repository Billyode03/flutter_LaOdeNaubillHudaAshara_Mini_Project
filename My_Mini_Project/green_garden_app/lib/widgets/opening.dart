import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';
import 'package:lottie/lottie.dart';

class Opening extends StatefulWidget {
  const Opening({super.key});

  @override
  State<Opening> createState() => _OpeningState();
}

class _OpeningState extends State<Opening> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPlants.greenDark,
      body: Column(
        children: [
          SizedBox(
            height: 250,
          ),
          Center(
              child: Lottie.asset('assets/lottie/plant.json',
                  height: 200, width: 200)),
          Text(
            'Green Garden',
            style: TextStyleUsable.interLogin,
          ),
        ],
      ),
    );
  }
}
