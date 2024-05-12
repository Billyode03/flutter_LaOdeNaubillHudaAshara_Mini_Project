import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';

class FormSearchHomeWidget extends StatefulWidget {
  final Function(String) onSearch;

  const FormSearchHomeWidget({super.key, required this.onSearch});

  @override
  State<FormSearchHomeWidget> createState() => _FormSearchHomeWidgetState();
}

class _FormSearchHomeWidgetState extends State<FormSearchHomeWidget> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextField(
        enabled: true,
        controller: _searchController,
        onChanged: (value) {
          widget.onSearch(value);
        },
        decoration: InputDecoration(
          filled: true,
          fillColor: ColorPlants.whiteSkull,
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
