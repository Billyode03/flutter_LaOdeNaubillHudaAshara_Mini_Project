import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Constant/text_constant.dart';
import 'package:green_garden/constant/image_constant.dart';
import 'package:green_garden/pages/article_page/widget/widgets/webPage.dart';

class ListArticlePlant extends StatefulWidget {
  const ListArticlePlant({super.key, required this.onItemSelected});

  final Function(int index) onItemSelected;

  @override
  State<ListArticlePlant> createState() => _ListArticlePlantState();
}

class _ListArticlePlantState extends State<ListArticlePlant> {
  // List of names for web pages
  List<String> webPageNames = [
    'Green Garden Canada',
    'Fine Gardening',
    'Be Green',
    'Tanduria',
    'Garden Beast',
  ];

  // List of image paths for web pages
  List<Image> webPageImages = [
    ImageConstant.webListOne,
    ImageConstant.webListTwo,
    ImageConstant.webListThree,
    ImageConstant.webListFour,
    ImageConstant.webListFive,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPlants.greenDark,
      body: ListView.builder(
        itemCount: webPageNames
            .length, // Change this to the number of web pages you want to display
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WebViewPage(
                    index + 1,
                  ),
                ),
              );
            },
            child: Column(
              children: [
                Container(
                  height: 180,
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
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage(
                              webPageImages[index] as String,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Text(
                    webPageNames[index],
                    style: TextStyleUsable.interRegularWhiteTwo,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
