import 'package:firebase_auth/firebase_auth.dart';
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
  final TextEditingController _emailController = TextEditingController();

  String _email = "";
  String? _errorEmail;

  Future passwordReset() async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(
        email: _emailController.text.trim(),
      );
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(
                  'Password reset link has been sent to the email address'),
            );
          });
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(
                'Fill Email first !!',
              ),
            );
          });
    }
  }

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
                controller: _emailController,
                hintText: 'Email',
                prefixIcon: IconConstant.emailIcon,
                enable: true,
                obscureText: false,
                onChanged: (String value) {
                  _email = value;
                  if (_email.isEmpty) {
                    _errorEmail = "Email must be fill first";
                  } else {
                    _errorEmail = null;
                  }
                  setState(() {});
                },
                errorText: _errorEmail,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 120,
            ),
            Center(
              child: ReusableButtonSubmit(
                onTap: () {
                  passwordReset();
                },
                text: 'ٌReset Password',
                textStyle: TextStyleUsable.interButton,
                bgColor: ColorPlants.whiteSkull,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Remember your account ? ",
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
