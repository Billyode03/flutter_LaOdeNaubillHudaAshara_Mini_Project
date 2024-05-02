import 'package:flutter/material.dart';
import 'package:green_garden/Pages/article_page/widget/article_detail_plant_one.dart';

class ListArticlePlant extends StatefulWidget {
  const ListArticlePlant({super.key});

  @override
  State<ListArticlePlant> createState() => _ListArticlePlantState();
}

class _ListArticlePlantState extends State<ListArticlePlant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 5, // Jumlah item
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Navigasi ke halaman baru ketika item diklik
             
            },
            child: ListTile(
              title: Text(
                  "Article ${index + 1}"), // Misalnya: Artikel 1, Artikel 2, ...
              leading:
                  Icon(Icons.article), // Ganti dengan ikon artikel yang sesuai
            ),
          );
        },
      ),
    );
  }
}
