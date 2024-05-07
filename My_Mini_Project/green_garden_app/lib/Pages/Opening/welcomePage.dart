import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';
import 'package:green_garden/provider_pages/login_provider_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  Future<void> signOut(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Out Confirm '),
          content: Text('Are you sure you want to sign out ?'),
          actions: <Widget>[
            TextButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                _showSnackBarMessage("You're out ");
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => exit(0)),
                  (Route<dynamic> route) => false,
                );
                SystemNavigator.pop(); // Close the app
              },
              child: Text('Yes'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Dismiss the dialog
              },
              child: Text('No'),
            )
          ],
        );
      },
    );
  }

  void _showSnackBarMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 5),
        backgroundColor: Colors.black,
        action: SnackBarAction(
          label: 'Close',
          textColor: Colors.white,
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/back.png',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            height: 200,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 200,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    'Welcome to Green Garden',
                    style: TextStyleUsable.interLogin,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 90,
                  ),
                  child: Text(
                    'Get to know your plants more closely',
                    style: TextStyleUsable.interRegular,
                  ),
                ),
                const SizedBox(height: 350),
                Center(
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 140,
                          height: 70,
                          decoration: BoxDecoration(
                              color: ColorPlants.greenDark,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginPageProvider(
                                    toRegisterPage: () {},
                                  ),
                                ),
                              );
                            },
                            child: Text(
                              'Sign In',
                              style: TextStyleUsable.interButton1,
                            ),
                          ),
                        ),
                        Container(
                          width: 110,
                          child: TextButton(
                            onPressed: () {
                              signOut(context);
                            },
                            child: Text(
                              'Sign Out',
                              style: TextStyleUsable.interButton,
                            ),
                          ),
                        ),
                      ],
                    ),
                    height: 48,
                    width: 250,
                    decoration: BoxDecoration(
                      color: ColorPlants.whiteSkull,
                      // border: Border.all(color: ColorPlants.greenDark),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          30,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
