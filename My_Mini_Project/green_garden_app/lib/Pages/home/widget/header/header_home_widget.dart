import 'package:flutter/material.dart';
import 'package:green_garden/Constant/text_constant.dart';

class HeaderHomeWidget extends StatelessWidget {
  const HeaderHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            'Find a plant want you know',
            style: TextStyleUsable.interOpen,
          ),
        ),
      ],
    );
  }
}
