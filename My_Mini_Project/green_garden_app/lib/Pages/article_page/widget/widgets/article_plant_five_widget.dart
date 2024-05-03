import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleFivePlant extends StatefulWidget {
  @override
  _WebViewExampleState createState() => _WebViewExampleState();
}

class _WebViewExampleState extends State<ArticleFivePlant> {
  late WebViewController _controller;
  String _pageTitle = 'https://gardenbeast.com/';
  final String _url = 'https://gardenbeast.com/';

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
