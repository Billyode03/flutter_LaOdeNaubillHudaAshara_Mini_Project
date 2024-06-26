import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/icon_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';
import 'package:green_garden/auth/login/login_pages.dart';
import 'package:green_garden/widgets/reusable_button_submit.dart';
import 'package:green_garden/widgets/reusable_text_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key, required this.toLoginPage});
  final VoidCallback toLoginPage;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPassController = TextEditingController();

  String? _errorMessage;

  String _names = "";
  String _passe = "";
  String? _errorName;
  String? _errorPass;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPassController.dispose();
    super.dispose();
  }

  Future _signUp() async {
    final email = _emailController.text.trim();
    final pass = _passwordController.text.trim();
    final confirmPass = _confirmPassController.text.trim();

    if (email.isEmpty || pass.isEmpty || confirmPass.isEmpty) {
      setState(() {
        _errorMessage = "Please fill the field first !!";
        print("$_errorMessage");
      });
      _showSnackBarMessage(_errorMessage!);
      return;
    }

    if (passwordConfirmed()) {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        );
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(
              toRegisterPage: () {},
            ),
          ),
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          _showSnackBarMessage("Pasword should be at least 6 Characters");
        } else {
          _showSnackBarMessage(e.message ?? "Registration failed");
        }
      }
    }
  }

  void _showSnackBarMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Center(child: Text(message)),
        duration: Duration(seconds: 5),
        backgroundColor: Colors.black,
      ),
    );
  }

  bool passwordConfirmed() {
    if (_passwordController.text.trim() == _confirmPassController.text.trim()) {
      return true;
    } else {
      _showSnackBarMessage("Password is not matches");
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
                enable: true,
                obscureText: false,
                onChanged: (String value) {
                  _names = value;
                  if (_names.isEmpty) {
                    _errorName == 'Email must not be empty';
                  } else if (_names.length < 3) {
                    _errorName == 'Email must be at least 3 characters';
                  } else {
                    _errorName = null;
                  }
                  setState(() {});
                },
                errorText: _errorName,
              ),
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
                enable: true,
                obscureText: true,
                onChanged: (String value) {
                  _passe = value;
                  if (_passe.isEmpty) {
                    _errorPass == 'Password must not be empty';
                  } else if (_passe.length < 6) {
                    _errorPass == 'Password must be at least 6 characters';
                  } else {
                    _errorPass = null;
                  }
                  setState(() {});
                },
                errorText: _errorPass,
              ),
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
                  enable: true,
                  obscureText: true),
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
                  onTap: () {
                    _signUp();
                  },
                  text: 'Sign Up',
                  textStyle: TextStyleUsable.interButton,
                  bgColor: ColorPlants.whiteSkull),
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
