import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';

class DetailIcon extends StatelessWidget {
  final Image iconConstant;
  const DetailIcon({
    super.key,
    required this.iconConstant,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 58,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: ColorPlants.whiteSkull,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: iconConstant,
          ),
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
