import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/icon_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';

class DiseasesPlantDetail extends StatefulWidget {
  const DiseasesPlantDetail({super.key});

  @override
  State<DiseasesPlantDetail> createState() => _DiseasePlantDetailState();
}

class _DiseasePlantDetailState extends State<DiseasesPlantDetail> {
  void _showBottomSheet(String text) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: ColorPlants.greenDark,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0), topRight: Radius.circular(0)),
              ),
              padding: EdgeInsets.all(20),
              child: Text(
                text,
                style: TextStyleUsable.interRegular,
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPlants.greenDark,
        elevation: 0,
      ),
      backgroundColor: ColorPlants.greenDark,
      body: Column(children: [
        // Center(child: Image.asset("assets/tree.jpg", width: 300)),
        Container(
          height: 480,
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('assets/tree.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Cemara Tree',
          style: TextStyleUsable.interRegularWhiteThree,
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                _showBottomSheet(
                    '''European Silver Fir (Abies alba) is an amazing coniferous species native to mountainous regions of central 
                    Europe and the Balkans. It is an evergreen tree with a narrow, pyramidal shape and long, soft needles. 
                    Its bark is scaly grey-brown and its branches are highly ornamental due to its conical-shaped silver-tinged needles.European Silver Fir (Abies alba) is an amazing coniferous species native to mountainous regions of central 
                    Europe and the Balkans. It is an evergreen tree with a narrow, pyramidal shape and long, soft needles. 
                    Its bark is scaly grey-brown and its branches are highly ornamental due to its conical-shaped silver-tinged needlesEuropean Silver Fir (Abies alba) is an amazing coniferous species native to mountainous regions of central 
                    Europe and the Balkans. It is an evergreen tree with a narrow, pyramidal shape and long, soft needles. 
                    Its bark is scaly grey-brown and its branches are highly ornamental due to its conical-shaped silver-tinged needlesEuropean Silver Fir (Abies alba) is an amazing coniferous species native to mountainous regions of central 
                    Europe and the Balkans. It is an evergreen tree with a narrow, pyramidal shape and long, soft needles. 
                    Its bark is scaly grey-brown and its branches are highly ornamental due to its conical-shaped silver-tinged needlesEuropean Silver Fir (Abies alba) is an amazing coniferous species native to mountainous regions of central 
                    Europe and the Balkans. It is an evergreen tree with a narrow, pyramidal shape and long, soft needles. 
                    Its bark is scaly grey-brown and its branches are highly ornamental due to its conical-shaped silver-tinged needles ''');
              },
              child: Container(
                height: 90,
                width: 110,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 2,
                          blurStyle: BlurStyle.inner,
                          color: ColorPlants.cyanPlant,
                          blurRadius: 2)
                    ],
                    color: ColorPlants.whiteSkull,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Text(
                        '   Description',
                        style: TextStyleUsable.interRegularBoldGreen,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    IconConstant.articleIcon
                  ],
                ),
              ),
            ),
            Container(
              height: 100,
              width: 2,
              color: ColorPlants.whiteSkull,
            ),
            GestureDetector(
              onTap: () {
                _showBottomSheet(
                    '''European Silver Fir (Abies alba) is an amazing coniferous species native to mountainous regions of central 
                    Europe and the Balkans. It is an evergreen tree with a narrow, pyramidal shape and long, soft needles. 
                    Its bark is scaly grey-brown and its branches are highly ornamental due to its conical-shaped silver-tinged needles.European Silver Fir (Abies alba) is an amazing coniferous species native to mountainous regions of central 
                    Europe and the Balkans. It is an evergreen tree with a narrow, pyramidal shape and long, soft needles. 
                    Its bark is scaly grey-brown and its branches are highly ornamental due to its conical-shaped silver-tinged needlesEuropean Silver Fir (Abies alba) is an amazing coniferous species native to mountainous regions of central 
                    Europe and the Balkans. It is an evergreen tree with a narrow, pyramidal shape and long, soft needles. 
                    Its bark is scaly grey-brown and its branches are highly ornamental due to its conical-shaped silver-tinged needlesEuropean Silver Fir (Abies alba) is an amazing coniferous species native to mountainous regions of central 
                    Europe and the Balkans. It is an evergreen tree with a narrow, pyramidal shape and long, soft needles. 
                    Its bark is scaly grey-brown and its branches are highly ornamental due to its conical-shaped silver-tinged needlesEuropean Silver Fir (Abies alba) is an amazing coniferous species native to mountainous regions of central 
                    Europe and the Balkans. It is an evergreen tree with a narrow, pyramidal shape and long, soft needles. 
                    Its bark is scaly grey-brown and its branches are highly ornamental due to its conical-shaped silver-tinged needles ''');
              },
              child: Container(
                height: 90,
                width: 110,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 2,
                          blurStyle: BlurStyle.inner,
                          color: ColorPlants.cyanPlant,
                          blurRadius: 2)
                    ],
                    color: ColorPlants.whiteSkull,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        '   Solution',
                        style: TextStyleUsable.interRegularBoldGreen,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    IconConstant.ideaIcon
                  ],
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
