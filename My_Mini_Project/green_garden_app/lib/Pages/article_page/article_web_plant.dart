import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:green_garden/Pages/article_page/widget/article_header_plant.dart';

class ArticlePlant extends StatefulWidget {
  const ArticlePlant({super.key});

  @override
  State<ArticlePlant> createState() => WebArticlePlantState();
}

class WebArticlePlantState extends State<ArticlePlant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPlants.greenDark,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: ArticleHeaderPlant(),
              
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
