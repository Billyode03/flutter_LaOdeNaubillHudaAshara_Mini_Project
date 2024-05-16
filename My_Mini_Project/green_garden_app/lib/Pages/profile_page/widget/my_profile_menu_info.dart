import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/icon_constant.dart';
import 'package:green_garden/pages/profile_page/widget/my_profile_menu_profile_widget.dart';

class ProfileMenuInfo extends StatelessWidget {
  const ProfileMenuInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(children: [
          MenuProfileWidget(
            icon: IconConstant.antusiatIcon,
            title: 'Plant Antusiat',
            titleTwo: '80%',
          )
        ]),
        Container(
          height: 50,
          width: 1,
          color: ColorPlants.whiteSkull,
        ),
        Column(children: [
          MenuProfileWidget(
            icon: IconConstant.peopleIcon,
            title: 'Comunities',
            titleTwo: '100',
          )
        ]),
        Container(
          height: 50,
          width: 1,
          color: ColorPlants.whiteSkull,
        ),
        Column(children: [
          MenuProfileWidget(
            icon: IconConstant.wateringIcon,
            title: 'Watering',
            titleTwo: '80 D',
          )
        ]),
      ],
    );
  }
}
