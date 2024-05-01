import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Pages/profile_page/widget/imageAvatar.dart';
import 'package:green_garden/Pages/profile_page/widget/my_profile_data.dart';
import 'package:green_garden/Pages/profile_page/widget/my_profile_menu_info.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorPlants.greenDark,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
              ),
              ProfileImage(),
              SizedBox(
                height: 50,
              ),
              ProfileMenuInfo(),
              SizedBox(
                height: 50,
              ),
              ProfileDataInfo()
            ],
          ),
        ));
  }
}
