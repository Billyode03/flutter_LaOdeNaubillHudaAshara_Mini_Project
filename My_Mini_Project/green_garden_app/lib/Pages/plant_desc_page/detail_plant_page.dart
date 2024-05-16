import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:green_garden/constant/color_constant.dart';
import 'package:green_garden/constant/icon_constant.dart';
import 'package:green_garden/constant/text_constant.dart';
import 'package:green_garden/pages/disease_page/diseases_plant_page.dart';
import 'package:green_garden/pages/plant_desc_page/widget/detail_Icon.dart';
import 'package:green_garden/Service/get_detail_plant_service.dart';
import 'package:green_garden/models/detail_plant.dart';
import 'package:green_garden/models/plants_model.dart';

class DetailPlantPage extends StatefulWidget {
  const DetailPlantPage(
      {super.key,
      required this.selectedPlant,
      required DetailPlant selectedPlanDetail});

  final PlantModel selectedPlant;

  @override
  State<DetailPlantPage> createState() => _DetailPlantPageState();
}

class _DetailPlantPageState extends State<DetailPlantPage> {
  late Future<DetailPlant> _fetchDetailPlantData;

  @override
  void initState() {
    _fetchDetailPlantData =
        GetDetailPlantService().fetchDetailPlantData(widget.selectedPlant.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPlants.greenDark,
      appBar: AppBar(
        backgroundColor: ColorPlants.greenDark,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: FutureBuilder<DetailPlant>(
          future: _fetchDetailPlantData,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Error : ${snapshot.error}'),
              );
            } else {
              DetailPlant selectedPlantDetail = snapshot.data!;
              return Column(
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
                            imageUrl: selectedPlantDetail.originalImageUrl,
                            imageBuilder: (context, imageProvider) => Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            
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
                    widget.selectedPlant.commonName,
                    style: TextStyleUsable.interRegularWhiteThree,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.selectedPlant.scientificName,
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
                                DetailIcon(
                                    iconConstant: IconConstant.cycleIcon),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  selectedPlantDetail.cycle,
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
                                  selectedPlantDetail.watering,
                                  style: TextStyleUsable.interRegularBold,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                DetailIcon(
                                    iconConstant: IconConstant.sunnyIcon),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  selectedPlantDetail.sunlight.first,
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
                                        builder: (context) =>
                                            DiseasePlantPage(),
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
                                        style: TextStyleUsable
                                            .interRegularBoldGreen,
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
                  Container(
                    height: 20,
                  ),
                  Text(
                    'Description',
                    style: TextStyleUsable.interRegularWhiteOne,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 26),
                    child: Text(
                      selectedPlantDetail.description,
                      style: TextStyleUsable.interRegular,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
