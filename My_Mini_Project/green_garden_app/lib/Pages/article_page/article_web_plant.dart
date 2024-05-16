import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/pages/article_page/widget/article_header_plant.dart';
import 'package:green_garden/pages/article_page/widget/article_list_article_plant.dart';

class ArticlePlantPage extends StatefulWidget {
  const ArticlePlantPage({super.key});

  @override
  State<ArticlePlantPage> createState() => WebArticlePlantState();
}

class WebArticlePlantState extends State<ArticlePlantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPlants.greenDark,
        elevation: 0,
      ),
      backgroundColor: ColorPlants.greenDark,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  ArticleHeaderPlant(),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Container(
              height: 600,
              child: ListArticlePlant(
                onItemSelected: (int index) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
