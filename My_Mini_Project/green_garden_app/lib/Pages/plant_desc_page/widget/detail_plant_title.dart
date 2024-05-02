import 'package:flutter/material.dart';
import 'package:green_garden/Constant/text_constant.dart';

class PlantTittle extends StatelessWidget {
  const PlantTittle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            'lorem ipsum dolor sit amet, consectet ut labore et dolore magna                   ',
            style: TextStyleUsable.interRegular,
          ),
        ),
      ],
    );
  }
}
