import 'package:flutter/material.dart';

class PlantListMenuHome extends StatelessWidget {

  const PlantListMenuHome({
    super.key,
    
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [PlantListMenuHome(title: title, iconsData: iconsData)
      ],
    );
  }
}
