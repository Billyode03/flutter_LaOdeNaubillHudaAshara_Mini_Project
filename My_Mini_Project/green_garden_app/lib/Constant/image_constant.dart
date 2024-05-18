import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ImageConstant {
  // Carousel Image
  static Image caruselOne = Image.asset(
    'assets/carousel/actPlant.png',
  );
  static Image caruselTwo = Image.asset(
    'assets/carousel/environment.jpg',
  );
  static Image caruselThree = Image.asset(
    'assets/carousel/environment2.png',
  );
  static Image caruselFour = Image.asset(
    'assets/carousel/happyEarthDay.png',
  );
  static Image caruselFive = Image.asset(
    'assets/carousel/planting.jpg',
  );

  // webList Image
  static Image webListOne = Image.asset(
    'assets/bannerList/beGarden.png',
  );
  static Image webListTwo = Image.asset(
    'assets/bannerList/fineGarden.png',
  );
  static Image webListThree = Image.asset(
    'assets/bannerList/beGreen.png',
  );
  static Image webListFour = Image.asset(
    'assets/bannerList/tanduria.png',
  );
  static Image webListFive = Image.asset(
    'assets/bannerList/gardenBeast.png',
  );

  // Image To Icon
  static Image virusIcon = Image.asset(
    'assets/icons/disease.png',
    height: 25,
    width: 25,
  );
  static Image articleIcon = Image.asset(
    'assets/icons/article.png',
    height: 25,
    width: 25,
  );
  static Image ideaIcon = Image.asset(
    'assets/icons/idea.png',
    height: 25,
    width: 25,
  );
  static Image loveIcon = Image.asset(
    'assets/icons/love.png',
    height: 25,
    width: 25,
  );
  static Image wateIcon = Image.asset(
    'assets/icons/water.png',
    height: 20,
    width: 20,
  );
  static Image cycleIcon = Image.asset(
    'assets/icons/cycle.png',
    height: 20,
    width: 20,
  );
  static Image sunnyIcon = Image.asset(
    'assets/icons/sunny.png',
    height: 2,
    width: 2,
  );

  //General Image
  static AssetImage aiBackground = const AssetImage(
    'assets/greenlant.png',
  );

  static Image openAiBg = Image.asset(
    'assets/aiBG.png',
    height: 100,
    width: 100,
  );
  static Image openAiBg2 = Image.asset(
    'assets/aiBG.png',
    height: 100,
    width: 100,
  );

  static Image scrennBoardOne = Image.asset(
    'assets/plant1.png',
  );
  static Image scrennBoardTwo = Image.asset(
    'assets/plant3.png',
  );
  static Image scrennBoardThree = Image.asset(
    'assets/plant2.png',
  );

  static AssetImage welcome = AssetImage(
    'assets/back.png',
  );

  static AssetImage profileImage = AssetImage(
    'assets/syns.jpg',
  );

  //LOTTIE
  static Lottie plantSplash = Lottie.asset('assets/lottie/plant.json',
      height: 200, width: 200, fit: BoxFit.cover) as Lottie;
}
