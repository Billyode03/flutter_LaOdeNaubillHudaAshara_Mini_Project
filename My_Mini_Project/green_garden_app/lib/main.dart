import 'package:flutter/material.dart';
import 'package:green_garden/Pages/article_page/article_web_plant.dart';
// import 'package:green_garden/Pages/article_page/widget/article_detail_plant_one.dart';
import 'package:green_garden/Pages/article_page/widget/article_list_article_plant.dart';
import 'package:green_garden/Pages/article_page/widget/widgets/article_plant_one_widget.dart';
import 'package:green_garden/Pages/disease_page/diseases_plant_page.dart';
import 'package:green_garden/Pages/home/home_page.dart';
import 'package:green_garden/Pages/Opening/onScreenBoard.dart';
import 'package:green_garden/Pages/Opening/welcomePage.dart';
import 'package:green_garden/Pages/home/widget/list_plant/plant_list_widget.dart';
import 'package:green_garden/Pages/plant_desc_page/detail_plant_page.dart';
import 'package:green_garden/Pages/profile_page/my_profile_page.dart';
import 'package:green_garden/Service/service.dart';
import 'package:green_garden/auth/forgot_pass/forgot_psw_page.dart';
import 'package:green_garden/auth/login/login_pages.dart';
import 'package:green_garden/auth/register/register_page.dart';
import 'package:green_garden/widgets/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage(
          toRegisterPage: () {},
        ));
  }
}
