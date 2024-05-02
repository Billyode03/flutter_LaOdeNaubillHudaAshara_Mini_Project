import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';

class PlantListWidget extends StatefulWidget {
  const PlantListWidget({super.key});

  @override
  State<PlantListWidget> createState() => _PlantListWidgetState();
}

class _PlantListWidgetState extends State<PlantListWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 400,
      decoration: BoxDecoration(
        color: ColorPlants.whiteSkull,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            'See Plant List',
            style: TextStyleUsable.interRegularGreenTwo,
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(itemBuilder: (context, index) {
              return Container(
                width: 200,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      right: 20,
                      child: Container(
                        height: 50,
                        width: 50,
                        child: IconButton(
                          onPressed: null,
                          icon: Icon(Icons.favorite),
                          color: ColorPlants.grey,
                          iconSize: 30,
                        ),
                        decoration: BoxDecoration(
                          color: ColorPlants.whiteSkull,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                    // Positioned(
                    //   bottom: 50,
                    //   left: 50,
                    //   right: 50,
                    //   top: 50,
                    //   child: Image.asset(
                    //     _plantList[index].imageURL,
                    //   ),
                    // ),
                  ],
                ),
                decoration: BoxDecoration(color: ColorPlants.cyanPlant),
              );
            }),
          )
        ],
      ),
    );
  }
}
