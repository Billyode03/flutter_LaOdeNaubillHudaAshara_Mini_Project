import 'package:flutter/material.dart';

class ReusableButtonSubmit extends StatelessWidget {
  final Function() onTap;
  final String text;
  final TextStyle textStyle;
  final Color bgColor;
  const ReusableButtonSubmit(
      {super.key,
      required this.onTap,
      required this.text,
      required this.bgColor,
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
          color: bgColor,
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
