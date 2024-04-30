import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';

class FormSearchHomeWidget extends StatelessWidget {
  const FormSearchHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextField(
        enabled: false,
        decoration: InputDecoration(
          filled: true,
          fillColor: ColorPlants.grey,
          hintText: 'Search plant, tree, articles...',
          hintStyle: TextStyleUsable.interRegularGreen,
          prefixIcon: Icon(Icons.search, color: ColorPlants.greyColor2),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              24,
            ),
            borderSide: BorderSide(
              color: ColorPlants.greyColor1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              24,
            ),
            borderSide: BorderSide(color: ColorPlants.greenMedium),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              24,
            ),
            borderSide: BorderSide(
              color: ColorPlants.greyColor1,
            ),
          ),
        ),
      ),
    );
  }
}
