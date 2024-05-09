import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:green_garden/Pages/ai_page/ai_page.dart';
import 'package:green_garden/Pages/opening/splash_screen.dart';
import 'package:green_garden/Pages/home/home_page.dart';
import 'package:green_garden/Pages/plant_desc_page/detail_plant_page.dart';
import 'package:green_garden/provider/forget_password_provider.dart';
import 'package:green_garden/provider/login_provider.dart';
import 'package:green_garden/provider/register_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LoginProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => RegisterProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ForgetPassProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OpenAiPage(),
    );g
  }
}
