import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:green_garden/constant/color_constant.dart';
import 'package:green_garden/constant/icon_constant.dart';
import 'package:green_garden/constant/text_constant.dart';
import 'package:green_garden/models/disease_model.dart';

class DiseasesPlantDetail extends StatelessWidget {
  final DiseaseModel selectedDisease;

  const DiseasesPlantDetail({
    super.key,
    required this.selectedDisease,
  });

  String getDescriptionAsString(List<DiseaseDescSoluPlant> subtitle,
      List<DiseaseDescSoluPlant> descriptions) {
    // Join the descriptions into a single string
    return descriptions.map((desc) => desc.description).join('\n');
  }

  String getSolutionAsString(List<DiseaseDescSoluPlant> subtitle,
      List<DiseaseDescSoluPlant> solutions) {
    // Join the solutions into a single string
    return solutions.map((sub) => sub.subtitle).join('\n');
  }

  void _showBottomSheet(BuildContext context, String title, String text) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: ColorPlants.greenDark,
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    title,
                    style: TextStyleUsable.interRegularWhiteOne,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    text,
                    style: TextStyleUsable.interRegular,
                    textAlign: TextAlign.justify,
                  ),
                ],
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
          height: 450,
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: ColorPlants.cyanPlant,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: ColorPlants.cyanPlant,
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
                  imageUrl: selectedDisease.images.first.thumbnail,
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  placeholder: (context, url) => CircularProgressIndicator(),
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
          selectedDisease.commonName,
          style: TextStyleUsable.interRegularWhiteThree,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          selectedDisease.scientificName,
          style: TextStyleUsable.interRegular,
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                _showBottomSheet(
                  context,
                  'Description',
                  selectedDisease.description
                      .map((desc) => '${desc.subtitle}\n\n${desc.description}')
                      .join('\n\n'),
                );
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
                  context,
                  'Solution',
                  selectedDisease.solution
                      .map((sol) => '${sol.subtitle}\n\n${sol.description}')
                      .join('\n\n'),
                );
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
