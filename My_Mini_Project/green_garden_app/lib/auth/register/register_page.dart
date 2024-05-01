import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/icon_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';
import 'package:green_garden/Pages/home/home_page.dart';
import 'package:green_garden/auth/login/login_pages.dart';
import 'package:green_garden/widgets/reusableButtonSubmit.dart';
import 'package:green_garden/widgets/reusableTextField.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key, required this.toLoginPage});
  final VoidCallback toLoginPage;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPassController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPassController.dispose();
    super.dispose();
  }

  Future _signUp() async {
    if (passwordConfirmed()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
    }
  }

  bool passwordConfirmed() {
    if (_passwordController.text.trim() == _confirmPassController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPlants.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/regisPic.png',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Register',
              style: TextStyleUsable.interLogin,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Create Your Account',
              style: TextStyleUsable.interRegular,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ReusableWidgetTextField(
                  controller: _emailController,
                  hintText: 'Email',
                  prefixIcon: IconConstant.emailIcon,
                  enable: true),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ReusableWidgetTextField(
                  controller: _passwordController,
                  hintText: 'Password',
                  prefixIcon: IconConstant.passwordIcon,
                  enable: true),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ReusableWidgetTextField(
                  controller: _confirmPassController,
                  hintText: 'Confirm Password',
                  prefixIcon: IconConstant.passwordIcon,
                  enable: true),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                'By registering, your are agreeing to our terms of use and Privaci Policy',
                style: TextStyleUsable.interRegular,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Center(
              child: ReusableButtonSubmit(
                  onTap: () async {
                    await _signUp();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  text: 'Sign Up',
                  textStyle: TextStyleUsable.interButton),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account ? ",
                  style: TextStyleUsable.interRegular,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(
                          toRegisterPage: () {},
                        ),
                      ),
                    );
                  },
                  child: Text(
                    'Sign in',
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
