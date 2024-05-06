import 'package:flutter/material.dart';
import 'package:green_garden/Constant/text_constant.dart';

class HeaderImageDetail extends StatefulWidget {
  const HeaderImageDetail({super.key});

  @override
  State<HeaderImageDetail> createState() => _HeaderImageDetailState();
}

class _HeaderImageDetailState extends State<HeaderImageDetail> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            children: [
              Align(
                child: Text(
                  'Cemara Tree',
                  style: TextStyleUsable.interDescWhite,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
