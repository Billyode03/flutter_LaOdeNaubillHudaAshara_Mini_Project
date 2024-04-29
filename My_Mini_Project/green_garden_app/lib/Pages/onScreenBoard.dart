import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';
import 'package:green_garden/Pages/introduction_pages/plant_page_one.dart';
import 'package:green_garden/Pages/introduction_pages/plant_page_three.dart';
import 'package:green_garden/Pages/introduction_pages/plant_page_two.dart';
import 'package:green_garden/Pages/welcomePage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  //Controller untuk mengikuti halaman dimana kita berada
  PageController _contrroler = PageController();
  int totalPage = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPlants.whiteSkull,
      body: Stack(
        children: [
          PageView(
            controller: _contrroler,
            children: [
              PlantPageOne(),
              PlantPageTwo(),
              PlantPageThree(),
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top +
                25, // Sesuaikan dengan kebutuhan Anda
            right: 25, // Sesuaikan dengan kebutuhan Anda
            child: GestureDetector(
              onTap: () {
                _contrroler.jumpToPage(2);
              },
              child: Text('Skip', style: TextStyleUsable.interOnScreenTwo),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 700),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmoothPageIndicator(
                  controller: _contrroler,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    dotColor: ColorPlants.grey,
                    activeDotColor: ColorPlants.greenDark,
                    spacing: 5,
                    dotHeight: 6,
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                GestureDetector(
                  onTap: () {
                    if (_contrroler.page!.toInt() == totalPage - 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WelcomePage(),
                        ),
                      );
                    } else {
                      _contrroler.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    }
                  },
                  child: Text(
                    'next',
                    style: TextStyleUsable.interOnScreenTwo,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
