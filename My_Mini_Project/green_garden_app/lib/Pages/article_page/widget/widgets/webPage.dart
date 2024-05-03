import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  final int pageIndex;

  WebViewPage(this.pageIndex);

  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late WebViewController _controller;
  late String _url;

  @override
  void initState() {
    super.initState();
    _url = getUrlForPageIndex(widget.pageIndex);
  }

  String getUrlForPageIndex(int index) {
    switch (index) {
      case 1:
        return 'https://www.gardencentrescanada.ca/about-us/plant-knowledge';
      case 2:
        return 'https://www.finegardening.com/article/growing-plants-and-knowledge';
      case 3:
        return 'https://be.green/en/blog/category/plant-knowledge';
      case 4:
        return 'https://tanduria.co/';
      case 5:
        return 'https://gardenbeast.com/';
      default:
        return 'https://gardenbeast.com/';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Web Page ${widget.pageIndex}'),
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
        javascriptMode: JavascriptMode.unrestricted,
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
