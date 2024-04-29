import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';

class ReusableButtonSubmit extends StatelessWidget {
  final Function() onTap;
  final String text;
  final TextStyle textStyle;
  const ReusableButtonSubmit(
      {super.key,
      required this.onTap,
      required this.text,
      required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 48,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: ColorPlants.whiteSkull,
        ),
        child: Center(
          child: Text(
            text,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
