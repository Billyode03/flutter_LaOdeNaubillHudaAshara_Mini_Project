import 'package:flutter/material.dart';
import 'package:green_garden/Constant/text_constant.dart';
import 'package:green_garden/constant/image_constant.dart';

class PlantPageThree extends StatelessWidget {
  const PlantPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 210,
        ),
        ImageConstant.scrennBoardThree,
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
