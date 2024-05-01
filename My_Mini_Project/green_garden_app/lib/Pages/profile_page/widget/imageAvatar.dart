import 'package:flutter/material.dart';
import 'package:green_garden/Constant/text_constant.dart';

class ProfileImage extends StatefulWidget {
  const ProfileImage({super.key});

  @override
  State<ProfileImage> createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CircleAvatar(
        radius: 60,
        backgroundImage: AssetImage('assets/syns.jpg'),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        'Naubil Huda',
        style: TextStyleUsable.interRegularWhiteTwo,
      ),
    ]);
  }
}
