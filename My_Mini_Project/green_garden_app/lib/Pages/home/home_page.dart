import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/icon_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';
import 'package:green_garden/Pages/home/widget/header/header_home_widget.dart';
import 'package:green_garden/Pages/home/widget/list_menu/plant_list_menu_home.dart';
import 'package:green_garden/Pages/home/widget/search_field/form_search_home_widget.dart';
import 'package:green_garden/auth/register/register_page.dart';
import 'package:green_garden/widgets/reusableButtonSubmit.dart';
import 'package:green_garden/widgets/reusableTextField.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // MotionTabbarController? _motionTabbarController;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPlants.greenDark,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              HeaderHomeWidget(),
              SizedBox(
                height: 20,
              ),
              FormSearchHomeWidget(),
              SizedBox(
                height: 20,
              ),
              PlantListMenuHome(),
            ],
          ),
        ),
      ),
    );
  }
}
