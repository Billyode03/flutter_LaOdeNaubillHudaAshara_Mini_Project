import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleFourPlant extends StatefulWidget {
  @override
  _WebViewExampleState createState() => _WebViewExampleState();
}

class _WebViewExampleState extends State<ArticleFourPlant> {
  late WebViewController _controller;
  String _pageTitle = 'https://tanduria.co/';
  final String _url = 'https://tanduria.co/';

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
