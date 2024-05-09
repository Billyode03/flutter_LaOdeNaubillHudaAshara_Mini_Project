import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/icon_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';
import 'package:green_garden/Pages/disease_page/diseases_plant_page.dart';
import 'package:green_garden/Pages/plant_desc_page/widget/detail_Icon.dart';
import 'package:green_garden/models/plants_model.dart';

class DetailPlantPage extends StatelessWidget {
  const DetailPlantPage({super.key, required this.selectedPlant});

  final PlantModel selectedPlant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPlants.greenDark,
      appBar: AppBar(
        backgroundColor: ColorPlants.greenDark,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: ColorPlants.whiteSkull,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: ColorPlants.whiteSkull,
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: CachedNetworkImage(
                      imageUrl: selectedPlant.defaultImage,
                      imageBuilder: (context, imageProvider) => Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          Icon(Icons.error, color: Colors.red, size: 48),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              selectedPlant.commonName,
              style: TextStyleUsable.interRegularWhiteThree,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              selectedPlant.scientificName,
              style: TextStyleUsable.interRegular,
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          DetailIcon(iconConstant: IconConstant.cycleIcon),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            selectedPlant.cycle,
                            style: TextStyleUsable.interRegularBold,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          DetailIcon(iconConstant: IconConstant.wateIcon),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            selectedPlant.watering,
                            style: TextStyleUsable.interRegularBold,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          DetailIcon(iconConstant: IconConstant.sunnyIcon),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            selectedPlant.sunlight.first,
                            style: TextStyleUsable.interRegularBold,
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
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
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DiseasePlantPage(),
                                ));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 18),
                                child: Text(
                                  '   Dieses Knowledge',
                                  style: TextStyleUsable.interRegularBoldGreen,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              IconConstant.virusIcon
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              selectedPlant.commonName,
              style: TextStyleUsable.interRegularWhiteThree,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              selectedPlant.commonName,
              style: TextStyleUsable.interRegular,
            ),
          ],
        ),
      ),
    );
  }
}
