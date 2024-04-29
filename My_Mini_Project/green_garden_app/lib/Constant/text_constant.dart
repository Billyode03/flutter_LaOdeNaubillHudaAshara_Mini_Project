import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:green_garden/Constant/color_constant.dart';

class TextStyleUsable {
  static TextStyle interWelcome = GoogleFonts.inter(
    fontSize: 68,
    color: ColorPlants.whiteSecond,
  );

  static TextStyle interLogin = TextStyle(
    fontFamily: GoogleFonts.inter.toString(),
    fontSize: 45,
    fontWeight: FontWeight.bold,
    color: ColorPlants.whiteSkull,
  );

  static TextStyle interLoginTwo = TextStyle(
    fontFamily: GoogleFonts.inter.toString(),
    fontSize: 15,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.normal,
    color: ColorPlants.whiteSkull,
  );

  static TextStyle interButton = TextStyle(
    fontFamily: GoogleFonts.inter.toString(),
    fontSize: 20,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    color: ColorPlants.greenDark,
  );

  static TextStyle interRegular = TextStyle(
    fontFamily: GoogleFonts.inter.toString(),
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: ColorPlants.whiteSkull,
  );
  static TextStyle interRegularGreen = TextStyle(
    fontFamily: GoogleFonts.inter.toString(),
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: ColorPlants.greenDark,
  );

  static TextStyle interRegularThree = TextStyle(
    fontFamily: GoogleFonts.inter.toString(),
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: ColorPlants.grey,
  );

  // Untuk tulisan Sign in/up
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

  static TextStyle interRegularFour = TextStyle(
    fontFamily: GoogleFonts.inter.toString(),
    fontSize: 45,
    fontWeight: FontWeight.bold,
    color: ColorPlants.whiteSkull,
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
}
