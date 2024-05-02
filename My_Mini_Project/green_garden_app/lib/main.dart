import 'package:flutter/material.dart';
import 'package:green_garden/Pages/article_page/article_web_plant.dart';
import 'package:green_garden/Pages/home/home_page.dart';
import 'package:green_garden/Pages/Opening/onScreenBoard.dart';
import 'package:green_garden/Pages/Opening/welcomePage.dart';
import 'package:green_garden/Pages/profile_page/my_profile_page.dart';
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
      home: HomePage (),
    );
  }
}
