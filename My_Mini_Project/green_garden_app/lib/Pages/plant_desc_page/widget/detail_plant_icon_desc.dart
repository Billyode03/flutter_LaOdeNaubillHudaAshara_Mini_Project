import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/icon_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';
import 'package:green_garden/Pages/disease_page/diseases_plant_page.dart';
import 'package:green_garden/Pages/plant_desc_page/widget/detail_Icon.dart';

class DetailPlantIcon extends StatefulWidget {
  const DetailPlantIcon({super.key});

  @override
  State<DetailPlantIcon> createState() => _DetailPlantIconState();
}

class _DetailPlantIconState extends State<DetailPlantIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                    'Perennial',
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
                    'Frequent',
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
                    'Full Sun',
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
    );
  }
}
