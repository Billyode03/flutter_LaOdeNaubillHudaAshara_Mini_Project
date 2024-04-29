import 'package:flutter/material.dart';
import 'package:green_garden/Constant/text_constant.dart';

class PlantPageOne extends StatelessWidget {
  const PlantPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 220,
        ),
        
        Image.asset(
          'assets/plant1.png',
        ),
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Know a lot about caring for your plants',
            style: TextStyleUsable.interOnScreen,
          ),
        ),
      ],
    );
  }
}
