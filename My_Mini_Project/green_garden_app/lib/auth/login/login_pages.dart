import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/icon_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';
import 'package:green_garden/Pages/home/home_page.dart';
import 'package:green_garden/auth/forgot_pass/forgot_psw_page.dart';
import 'package:green_garden/auth/register/register_page.dart';
import 'package:green_garden/widgets/reusableButtonSubmit.dart';
import 'package:green_garden/widgets/reusableTextField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.toRegisterPage});
  final VoidCallback toRegisterPage;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  String? _errorMessage;
  String? _successMessage;

  Future _signIn() async {
    final email = _emailController.text.trim();
    final pass = _passwordController.text.trim();

    //Validasi Inputan
    if (email.isEmpty || pass.isEmpty) {
      setState(() {
        _errorMessage = "Please enter email and password";
        print("$_errorMessage");
      });
      _showSnackBarMessage(_errorMessage!);
      return;
    }
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim());
      _showSnackBarMessage("Login Success");
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        _errorMessage = e.message;
      });
    }
    _showSnackBarMessage(_errorMessage!);
  }

  void _showSnackBarMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 5),
        backgroundColor: Colors.red,
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
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
                controller: _emailController,
                hintText: 'Email',
                prefixIcon: IconConstant.emailIcon,
                enable: true,
                obscureText: false,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ReusableWidgetTextField(
                controller: _passwordController,
                hintText: 'Password',
                prefixIcon: IconConstant.passwordIcon,
                enable: true,
                obscureText: true,
              ),
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
                    _signIn();
                  },
                  text: 'Sign In',
                  textStyle: TextStyleUsable.interButton,
                  bgColor: ColorPlants.whiteSkull),
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
                        builder: (context) => RegisterPage(
                          toLoginPage: () {},
                        ),
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
