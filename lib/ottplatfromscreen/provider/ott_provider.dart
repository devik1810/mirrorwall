import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class OTTProvider extends ChangeNotifier{
  WebViewController? webViewController;

  List Link =[
    "https://www.netflix.com/",
    "https://www.amazon.com/",
    "https://www.hotstar.com/",
    "https://www.hotstar.com/",
    "https://www.sonyliv.com/",

  ];

  List Images=[
    "assets/images/ott1.jpg",
    "assets/images/ott2.jpg",
    "assets/images/ott3.jpg",
    "assets/images/ott4.jpg",
    "assets/images/ott5.jpg",
    

  ];

  void initController(int index){
    webViewController= WebViewController();
    webViewController!.loadRequest(Uri.parse("${Link[index]}"));
  }
}