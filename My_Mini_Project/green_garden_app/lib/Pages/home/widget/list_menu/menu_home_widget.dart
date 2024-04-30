import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/icon_constant.dart';

class MenuHomeWidget extends StatelessWidget {
  final String title;
  final Function()? onTap;
  final Image iconConstant;
  const MenuHomeWidget({
    super.key,
    required this.title,
    required this.iconConstant, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 56,
          width: 64,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: ColorPlants.whiteSkull,
          ),
          child: GestureDetector(
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: iconConstant,
            ),
          ),
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