import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleOneWidget extends StatefulWidget {
  const ArticleOneWidget({super.key});

  final WebViewController controller;

  @override
  State<ArticleOneWidget> createState() => _ArticleOneWidgetState();
}

class _ArticleOneWidgetState extends State<ArticleOneWidget> {
  var loadingPecentage = 0;

  @override
  void initState() {
    widget.controller..setNavigationDelegate(NavigationDelegate())
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
