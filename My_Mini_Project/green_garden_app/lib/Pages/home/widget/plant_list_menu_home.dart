import 'package:flutter/material.dart';
import 'package:green_garden/Constant/icon_constant.dart';
import 'package:green_garden/Pages/home/widget/menu_home_widget.dart';

class PlantListMenuHome extends StatelessWidget {
  const PlantListMenuHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MenuHomeWidget(title: 'Disease', iconConstant: IconConstant.virusIcon),
        MenuHomeWidget(title: 'Disease', iconConstant: IconConstant.virusIcon),
        MenuHomeWidget(title: 'Disease', iconConstant: IconConstant.virusIcon),
        MenuHomeWidget(title: 'Disease', iconConstant: IconConstant.virusIcon),
      ],
    );
  }
}
