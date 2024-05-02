import 'package:flutter/material.dart';
import 'package:green_garden/Constant/icon_constant.dart';
import 'package:green_garden/Pages/article_page/article_web_plant.dart';
import 'package:green_garden/Pages/disease_page/diseases_plant_page.dart';
import 'package:green_garden/Pages/home/widget/list_menu/menu_home_widget.dart';
import 'package:green_garden/Pages/profile_page/my_profile_page.dart';
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
          title: 'Article',
          iconConstant: IconConstant.articleIcon,
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ArticlePlantPage(),
                ));
          },
        ),
        SizedBox(
          width: 20,
        ),
        MenuHomeWidget(
          title: 'Disease',
          iconConstant: IconConstant.virusIcon,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DiseasePage(),
              ),
            );
          },
        ),
        SizedBox(
          width: 20,
        ),
        MenuHomeWidget(
          title: 'Favorite',
          iconConstant: IconConstant.loveIcon,
        ),
        SizedBox(
          width: 20,
        ),
        MenuHomeWidget(
            title: 'Tips & Trick', iconConstant: IconConstant.ideaIcon),
      ],
    );
  }
}
