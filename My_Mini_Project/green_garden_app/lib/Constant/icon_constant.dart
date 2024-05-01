import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';

class IconConstant {
  static Icon homeIcon = Icon(
    Icons.home_filled,
    color: ColorPlants.greenDark,
    size: 25,
  );
  static Icon emailIcon = Icon(
    Icons.email,
    color: ColorPlants.greenDark,
    size: 25,
  );
  static Icon passwordIcon = Icon(
    Icons.lock,
    color: ColorPlants.greenDark,
    size: 25,
  );
  static Icon arrowRightIcon = Icon(
    Icons.arrow_right_alt,
    color: ColorPlants.whiteSkull,
    size: 35,
  );
  static Icon cycleIcon = Icon(
    Icons.cyclone,
    color: ColorPlants.greenDark,
    size: 25,
  );
  static Icon waterIcon = Icon(
    Icons.water_drop,
    color: ColorPlants.greenDark,
    size: 25,
  );
  static Icon sunIcon = Icon(
    Icons.sunny,
    color: ColorPlants.greenDark,
    size: 25,
  );
  static Icon peopleIcon = Icon(
    Icons.people,
    color: ColorPlants.whiteSkull,
    size: 25,
  );
  static Icon wateringIcon = Icon(
    Icons.water_drop,
    color: ColorPlants.whiteSkull,
    size: 25,
  );
  static Icon antusiatIcon = Icon(
    Icons.stacked_bar_chart,
    color: ColorPlants.whiteSkull,
    size: 25,
  );

  // ICON FROM IMAGE
  static Image virusIcon = Image.asset(
    'assets/icons/disease.png',
    height: 25,
    width: 25,
  );
  static Image articleIcon = Image.asset(
    'assets/icons/article.png',
    height: 25,
    width: 25,
  );
  static Image ideaIcon = Image.asset(
    'assets/icons/idea.png',
    height: 25,
    width: 25,
  );
  static Image loveIcon = Image.asset(
    'assets/icons/love.png',
    height: 25,
    width: 25,
  );
}
