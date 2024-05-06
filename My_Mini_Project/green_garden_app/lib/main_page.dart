import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:green_garden/Pages/home/home_page.dart';
import 'package:green_garden/auth/auth_page.dart';

// TODO : Pengecek apakah Firebase memiliki data dari user atau tidak 

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return HomePage();
        } else {
          return AuthPage();
        }
      },
    ));
  }
}
