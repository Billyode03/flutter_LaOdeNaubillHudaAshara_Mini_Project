import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';
import 'package:green_garden/Pages/Opening/welcomePage.dart';
import 'package:green_garden/Pages/profile_page/widget/my_profile_data_widget.dart';
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
    await FirebaseAuth.instance.signOut();
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => WelcomePage()),
      (Route<dynamic> route) => false,
    );
    SystemNavigator.pop(); // Close the app
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WelcomePage(),
                ),
              );
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
