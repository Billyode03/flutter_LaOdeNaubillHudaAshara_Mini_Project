import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';
import 'package:green_garden/Pages/Opening/welcomePage.dart';
import 'package:green_garden/Pages/profile_page/widget/my_profile_data_widget.dart';
import 'package:green_garden/Utils/shred_pref.dart';
import 'package:green_garden/widgets/reusableButtonSubmit.dart';

class ProfileDataInfo extends StatefulWidget {
  const ProfileDataInfo({
    super.key,
  });

  @override
  State<ProfileDataInfo> createState() => _ProfileDataInfoState();
}

class _ProfileDataInfoState extends State<ProfileDataInfo> {
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

  String? token;
  String? pass;

  void getToken() async {
    token = await ShredPref.getToken();
    print(token);
    setState(() {});
  }

  void getPassToken() async {
    pass = await ShredPref.getPassToken();
    print(pass);
    setState(() {});
  }

  @override
  void initState() {
    getToken();
    getPassToken();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
          color: ColorPlants.whiteSkull,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30))),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          DataProfileWidget(
            text: 'Name       ',
            titikDua: '              : ',
            textTwo: 'Naubill Huda                 ',
            icon: Icon(
              Icons.arrow_forward_ios_rounded,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Divider(
              height: 2,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          DataProfileWidget(
            text: 'Email        ',
            titikDua: '              : ',
            textTwo: 'naubilode@gmail.com',
            icon: Icon(
              Icons.arrow_forward_ios_rounded,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Divider(
              height: 2,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          DataProfileWidget(
            text: 'Phone Number ',
            titikDua: ' : ',
            textTwo: '0899235422222           ',
            icon: Icon(
              Icons.arrow_forward_ios_rounded,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Divider(
              height: 2,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ReusableButtonSubmit(
            onTap: () {
              ShredPref.removeAllKey();
              signOut(context);
            },
            text: 'Sign Out',
            textStyle: TextStyleUsable.interButton1,
            bgColor: ColorPlants.greenDark,
          )
        ],
      ),
    );
  }
}
