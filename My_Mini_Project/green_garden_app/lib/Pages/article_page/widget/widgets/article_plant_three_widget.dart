import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleThreePlant extends StatefulWidget {
  @override
  _WebViewExampleState createState() => _WebViewExampleState();
}

class _WebViewExampleState extends State<ArticleThreePlant> {
  late WebViewController _controller;
  String _pageTitle = 'https://be.green/en/blog/category/plant-knowledge';
  final String _url = 'https://be.green/en/blog/category/plant-knowledge';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pageTitle),
        actions: [
          IconButton(
            onPressed: () async {
              if (await _controller.canGoBack()) {
                _controller.goBack();
              }
            },
            icon: Icon(Icons.arrow_back),
          ),
          IconButton(
            onPressed: () async {
              if (await _controller.canGoForward()) {
                _controller.goForward();
              }
            },
            icon: Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: WebView(
        initialUrl: _url,
        onWebViewCreated: (WebViewController controller) {
          _controller = controller;
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.loadUrl(_url); // Reloads the WebView with the initial URL
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
