import 'package:flutter/material.dart';
import 'package:green_garden/provider_pages/login_provider_page.dart';
import 'package:green_garden/provider_pages/register_provider_page.dart';

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
      return LoginPageProvider(toRegisterPage: toggleScreens);
    } else {
      return RegisterPageProvider(toLoginPage: toggleScreens);
    }
  }
}
