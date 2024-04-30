import 'package:flutter/material.dart';
import 'package:green_garden/Constant/icon_constant.dart';
import 'package:green_garden/Pages/home/widget/list_menu/menu_home_widget.dart';
// import 'package:green_garden/Pages/home/widget/menu_home_widget.dart';

class PlantListMenuHome extends StatelessWidget {
  const PlantListMenuHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MenuHomeWidget(
            title: 'Article', iconConstant: IconConstant.articleIcon),
        SizedBox(
          width: 20,
        ),
        MenuHomeWidget(title: 'Disease', iconConstant: IconConstant.virusIcon),
        SizedBox(
          width: 20,
        ),
        MenuHomeWidget(title: 'Favorite', iconConstant: IconConstant.loveIcon),
        SizedBox(
          width: 20,
        ),
        MenuHomeWidget(
            title: 'Tips & Trick', iconConstant: IconConstant.ideaIcon),
      ],
    );
  }
}
