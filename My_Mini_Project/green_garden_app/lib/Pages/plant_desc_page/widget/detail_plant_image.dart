import 'package:flutter/material.dart';
import 'package:green_garden/Constant/text_constant.dart';

class DetailPlantImage extends StatelessWidget {
  const DetailPlantImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 278,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('assets/tree.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
