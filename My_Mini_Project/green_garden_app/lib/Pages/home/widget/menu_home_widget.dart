import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/icon_constant.dart';

class MenuHomeWidget extends StatelessWidget {
  final String title;
  final Image iconConstant;
  const MenuHomeWidget({
    super.key,
    required this.title,
    required this.iconConstant,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 56,
          width: 64,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: ColorPlants.whiteSkull,
          ),
          child: iconConstant,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: TextStyle(color: ColorPlants.whiteSkull),
        ),
      ],
    );
  }
}
