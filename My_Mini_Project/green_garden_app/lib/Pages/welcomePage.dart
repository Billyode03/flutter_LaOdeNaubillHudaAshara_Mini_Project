import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/icon_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';
import 'package:green_garden/auth/register_page.dart';
import 'package:green_garden/widgets/reusableButtonSubmit.dart';
import 'package:green_garden/widgets/reusableTextField.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/back.png',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            height: 200,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 200,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    'Welcome to Green Garden',
                    style: TextStyleUsable.interLogin,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 90,
                  ),
                  child: Text(
                    'Get to know your plants more closely',
                    style: TextStyleUsable.interRegular,
                  ),
                ),
                SizedBox(height: 350),
                Center(
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Text('Sign In'),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              child: Text('Sign In'),
                            ),
                          ],
                        ),
                      ],
                    ),
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                        color: ColorPlants.whiteSkull,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                  ),
                )
                // Center(
                //   child: ReusableButtonSubmit(
                //       onTap: () {},
                //       text: 'Sign In',
                //       textStyle: TextStyleUsable.interButton),
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
