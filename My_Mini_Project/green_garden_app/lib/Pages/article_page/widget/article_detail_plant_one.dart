import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticlePlantOne extends StatefulWidget {
  ArticlePlantOne({
    super.key,
  });

  @override
  State<ArticlePlantOne> createState() => _ArticlePlantOneState();
}

class _ArticlePlantOneState extends State<ArticlePlantOne> {
  late final WebViewController controller;

  final String url =
      "https://www.gardencentrescanada.ca/about-us/plant-knowledge";

  @override
  void iniState() {
    controller = WebViewController()..loadRequest(Uri.parse(url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text(url),),
      appBar: AppBar(
        title: Text('Garden Center Canada'),
        actions: [
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () async {
                  final messanger = ScaffoldMessenger.of(context);
                  if (await controller.canGoBack()) {
                    await controller.goBack();
                  } else {
                    messanger.showSnackBar(
                      SnackBar(
                        content: Text(
                          'No Back Story Found',
                        ),
                      ),
                    );
                    return;
                  }
                },
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: () async {
                  final messanger = ScaffoldMessenger.of(context);
                  if (await controller.canGoForward()) {
                    await controller.goForward();
                  } else {
                    messanger.showSnackBar(
                      SnackBar(
                        content: Text(
                          'No Forward  Story Found',
                        ),
                      ),
                    );
                    return;
                  }
                },
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.replay),
              ),
            ],
          )
        ],
      ),
      body: ArticleOneWidget(controller : controller),
    );
  }
}
