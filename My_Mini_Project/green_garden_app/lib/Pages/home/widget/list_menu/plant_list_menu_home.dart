import 'package:flutter/material.dart';
import 'package:green_garden/constant/image_constant.dart';
import 'package:green_garden/pages/article_page/article_web_plant.dart';
import 'package:green_garden/pages/disease_page/diseases_plant_page.dart';
import 'package:green_garden/pages/favorite_page/favorite_page.dart';
import 'package:green_garden/pages/home/widget/list_menu/menu_home_widget.dart';
import 'package:green_garden/pages/tips_trick_page/tips_trick_page.dart';
// import 'package:green_garden/Pages/home/widget/menu_home_widget.dart';

class PlantListMenuHome extends StatelessWidget {
  const PlantListMenuHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MenuHomeWidget(
              title: 'Article',
              iconConstant: ImageConstant.articleIcon,
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
              iconConstant: ImageConstant.virusIcon,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DiseasePlantPage(),
                  ),
                );
              },
            ),
            SizedBox(
              width: 20,
            ),
            MenuHomeWidget(
              title: 'Favorite',
              iconConstant: ImageConstant.loveIcon,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FavoritePage(),
                  ),
                );
              },
            ),
            SizedBox(
              width: 20,
            ),
            MenuHomeWidget(
              title: 'Tips & Trick',
              iconConstant: ImageConstant.ideaIcon,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TipsTrickPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
