import 'package:flutter/material.dart';
import 'package:green_garden/constant/text_constant.dart';

class ArticleHeaderPlant extends StatelessWidget {
  const ArticleHeaderPlant({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            'Discovery your plant knowledge',
            style: TextStyleUsable.interOpen,
          ),
        ),
      ],
    );
  }
}
