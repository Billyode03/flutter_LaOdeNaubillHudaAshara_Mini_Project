import 'package:flutter/material.dart';
import 'package:green_garden/Constant/text_constant.dart';

class PlantPageTwo extends StatelessWidget {
  const PlantPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 177,
        ),
        Image.asset(
          'assets/plant2.png',
        ),
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Have broad knowledge about exiting plants',
            style: TextStyleUsable.interOnScreen,
          ),
        ),
      ],
    );
  }
}
