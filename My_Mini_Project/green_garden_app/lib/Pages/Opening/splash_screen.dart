import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';
import 'package:green_garden/Pages/Opening/welcomePage.dart';
import 'package:green_garden/Pages/home/home_page.dart';
import 'package:green_garden/Utils/shred_pref.dart';
import 'package:green_garden/auth/login/login_pages.dart';
import 'package:green_garden/Pages/Opening/onScreenBoard.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void checkToken() async {
    final token = await ShredPref.getToken();
    final pass = await ShredPref.getPassToken();

    if (token != null) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ));
    }
  }

  @override
  void initState() {
    checkToken();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.scale(
      duration: Duration(milliseconds: 10000),
      backgroundColor: ColorPlants.greenDark,
      childWidget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              child: Lottie.asset('assets/lottie/plant.json',
                  height: 200, width: 200, fit: BoxFit.cover)),
          SizedBox(height: 10),
          Text(
            "Green Garden",
            style: TextStyleUsable.interSplashScreen,
          ),
        ],
      ),
      nextScreen: OnBoardingScreen(),
    );
  }
}
