import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/icon_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';
import 'package:green_garden/auth/login/login_pages.dart';
import 'package:green_garden/widgets/reusableButtonSubmit.dart';
import 'package:green_garden/widgets/reusableTextField.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPlants.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Image.asset(
                'assets/forgetPic.png',
              ),
            ),
            SizedBox(
              height: 120,
            ),
            Text(
              'Forgot Password',
              style: TextStyleUsable.interLogin,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Enter Your Email and we will send you a password reset link',
                style: TextStyleUsable.interRegular,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ReusableWidgetTextField(
                  hintText: 'Email',
                  prefixIcon: IconConstant.emailIcon,
                  enable: true),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 150,
            ),
            Center(
              child: ReusableButtonSubmit(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(toRegisterPage: () {  },),
                      ),
                    );
                  },
                  text: 'ٌReset Password',
                  textStyle: TextStyleUsable.interButton),
            )
          ],
        ),
      ),
    );
  }
}
