import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:green_garden/Constant/color_constant.dart';

class TextStyleUsable {
  static TextStyle interWelcome = GoogleFonts.inter(
    fontSize: 68,
    color: ColorPlants.whiteSecond,
  );

  // Text Judul Page
  static TextStyle interLogin = TextStyle(
    fontFamily: GoogleFonts.inter.toString(),
    fontSize: 45,
    fontWeight: FontWeight.bold,
    color: ColorPlants.whiteSkull,
  );

  // Text Judul Atas
  static TextStyle interOpen = TextStyle(
    fontFamily: GoogleFonts.inter.toString(),
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: ColorPlants.whiteSkull,
  );

  //Text untuk Hint TEXTFIELD
  static TextStyle interTextField = TextStyle(
    fontFamily: GoogleFonts.inter.toString(),
    fontSize: 15,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.normal,
    color: ColorPlants.greenDark,
  );

  //Text jika button warna putih
  static TextStyle interButton = TextStyle(
    fontFamily: GoogleFonts.inter.toString(),
    fontSize: 20,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    color: ColorPlants.greenDark,
  );

  //Text jika button warna Hijau
  static TextStyle interButton1 = TextStyle(
    fontFamily: GoogleFonts.inter.toString(),
    fontSize: 20,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    color: ColorPlants.whiteSkull,
  );

  //Text untuk pengantar widget hijau
  static TextStyle interRegular = TextStyle(
    fontFamily: GoogleFonts.inter.toString(),
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: ColorPlants.whiteSkull,
  );

  //Text untuk pengantar widget BG putih
  static TextStyle interRegularGreen = TextStyle(
    fontFamily: GoogleFonts.inter.toString(),
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: ColorPlants.greenDark,
  );

  //Text untuk Header Desc
  static TextStyle interRegularGreenTwo = TextStyle(
    fontFamily: GoogleFonts.inter.toString(),
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: ColorPlants.greenDark,
  );

  // Untuk tulisan Sign in/up dengan garis bawah
  static TextStyle interRegularTwo = TextStyle(
    fontFamily: GoogleFonts.inter.toString(),
    fontSize: 17,
    fontWeight: FontWeight.bold,
    color: ColorPlants.whiteSkull,
    decoration: TextDecoration.underline,
  );

  // tulisan forget Password
  static TextStyle interRegularFP = TextStyle(
    fontFamily: GoogleFonts.inter.toString(),
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: ColorPlants.greyColor3.withOpacity(0.8),
    decoration: TextDecoration.underline,
  );

  static TextStyle interOnScreen = TextStyle(
    fontFamily: GoogleFonts.inter.toString(),
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: ColorPlants.greenDark,
  );

  static TextStyle interOnScreenOne = TextStyle(
    fontFamily: GoogleFonts.inter.toString(),
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: ColorPlants.greyColor1,
  );
  static TextStyle interOnScreenTwo = TextStyle(
    fontFamily: GoogleFonts.inter.toString(),
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: ColorPlants.greenDark,
  );

  static TextStyle interSplashScreen = TextStyle(
    fontFamily: GoogleFonts.inter.toString(),
    fontSize: 45,
    fontWeight: FontWeight.bold,
    color: ColorPlants.whiteSkull,
  );
}
