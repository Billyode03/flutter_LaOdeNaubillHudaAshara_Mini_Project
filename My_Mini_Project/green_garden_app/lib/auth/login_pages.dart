import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/icon_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';
import 'package:green_garden/Pages/home_page.dart';
import 'package:green_garden/auth/forgot_psw_page.dart';
import 'package:green_garden/auth/register_page.dart';
import 'package:green_garden/widgets/reusableButtonSubmit.dart';
import 'package:green_garden/widgets/reusableTextField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                'assets/loginPic.png',
                width: 280,
                height: 280,
              ),
            ),
            Text(
              'Welcome Back',
              style: TextStyleUsable.interLogin,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Login to your account',
              style: TextStyleUsable.interRegular,
            ),
            SizedBox(
              height: 30,
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ReusableWidgetTextField(
                  hintText: 'Password',
                  prefixIcon: IconConstant.passwordIcon,
                  enable: true),
            ),
            Padding(
              padding: EdgeInsets.only(left: 190),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForgetPasswordPage(),
                    ),
                  );
                },
                child: Text(
                  'Forget Password ??',
                  style: TextStyleUsable.interRegularFP,
                ),
              ),
            ),
            SizedBox(
              height: 63,
            ),
            Center(
              child: ReusableButtonSubmit(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  text: 'Sign In',
                  textStyle: TextStyleUsable.interButton),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account ? ",
                  style: TextStyleUsable.interRegular,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyleUsable.interRegularTwo,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
