import 'package:flutter/material.dart';
import 'package:green_garden/Constant/color_constant.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  final int pageIndex;

  WebViewPage(
    this.pageIndex,
  );
  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late WebViewController _controller;
  late String _url;
  late String _pageTitle;

  @override
  void initState() {
    super.initState();
    _url = getUrlForPageIndex(widget.pageIndex);
    _pageTitle = getWebPageTitle(_url); // Memperbarui judul berdasarkan URL
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

  String getWebPageTitle(String url) {
    // Mengambil judul dari URL
    Uri uri = Uri.parse(url);
    String host = uri.host;
    return host; // Menggunakan host sebagai judul
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPlants.greenDark,
        title: Text(_pageTitle),
        actions: [
          IconButton(
            onPressed: () {
              _controller
                  .loadUrl(_url); // Reloads the WebView with the initial URL
            },
            icon: Icon(Icons.refresh),
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
    );
  }
}
