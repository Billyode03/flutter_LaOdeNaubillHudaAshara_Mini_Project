import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';
import 'package:green_garden/auth/login_pages.dart';
import 'package:green_garden/Pages/onScreenBoard.dart';
import 'package:green_garden/widgets/opening.dart';
// import 'package:green_garden/widgets/opening_page.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 7000,
      nextScreen: OnBoardingScreen(),
      splashIconSize: 200,
      backgroundColor: ColorPlants.greenDark,
      // splashTransition: SplashTransition.fadeTransition,
      splash: Lottie.asset('assets/lottie/plant.json',
          height: 200, width: 200, fit: BoxFit.cover),
    );
  }
}
