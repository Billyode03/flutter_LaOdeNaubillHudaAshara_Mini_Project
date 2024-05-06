import 'package:flutter/material.dart';
import 'package:green_garden/Constant/text_constant.dart';

class DiseaseHeaderPlant extends StatelessWidget {
  const DiseaseHeaderPlant({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        
        Expanded(
          child: Text(
            'Check Your Plant Diseases ...',
            style: TextStyleUsable.interOpen,
          ),
          
        ),
      ],
    );
  }
}
