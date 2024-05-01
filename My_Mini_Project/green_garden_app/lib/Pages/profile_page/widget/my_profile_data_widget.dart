import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';

class DataProfileWidget extends StatelessWidget {
  final String text;
  final String titikDua;
  final Icon icon;
  final String textTwo;

  const DataProfileWidget(
      {super.key,
      required this.text,
      required this.titikDua,
      required this.icon,
      required this.textTwo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyleUsable.interRegularBlackThree,
          ),
          Text(titikDua),
          Text(
            textTwo,
            style: TextStyleUsable.interRegularBlack,
          ),
          icon,
        ],
      ),
    );
  }
}
