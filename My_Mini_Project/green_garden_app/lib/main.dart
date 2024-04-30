import 'package:flutter/material.dart';
import 'package:green_garden/Pages/home_page.dart';
import 'package:green_garden/Pages/onScreenBoard.dart';
import 'package:green_garden/Pages/welcomePage.dart';
import 'package:green_garden/auth/forgot_psw_page.dart';
import 'package:green_garden/auth/login_pages.dart';
import 'package:green_garden/auth/register_page.dart';

import 'package:green_garden/widgets/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}
