import 'package:flutter/material.dart';
import 'package:green_garden/Constant/text_constant.dart';

class MenuProfileWidget extends StatelessWidget {
  final String title;
  final String titleTwo;
  final Icon icon;
  const MenuProfileWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.titleTwo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icon,
        SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: TextStyleUsable.interRegular,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          titleTwo,
          style: TextStyleUsable.interRegularWhiteTwo,
        ),
      ],
    );
  }
}
