import 'package:flutter/material.dart';
import 'package:green_garden/Constant/text_constant.dart';

class PlantPageThree extends StatelessWidget {
  const PlantPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 210,
        ),
        Image.asset(
          'assets/plant3.png',
        ),
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Consultation regarding plant diseases',
            style: TextStyleUsable.interOnScreen,
          ),
        ),
      ],
    );
  }
}
