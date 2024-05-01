import 'package:flutter/material.dart';
import 'package:green_garden/auth/login/login_pages.dart';
import 'package:green_garden/auth/register/register_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}
// TODO : Auth Page, berfungsi agar user bisa dengan mudah, memilih login atau register dengan aksi yang satu

class _AuthPageState extends State<AuthPage> {
  bool toLoginPage = true;

  void toggleScreens() {
    setState(() {
      toLoginPage = !toLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (toLoginPage) {
      return LoginPage(toRegisterPage: toggleScreens);
    } else {
      return RegisterPage(toLoginPage: toggleScreens);
    }
  }
}
