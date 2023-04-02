import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class EductaionProvider extends ChangeNotifier{
  WebViewController? webViewController;

  List Link =[
  "https://en.wikipedia.org/wiki/School",
    "https://www.w3schools.com/",
    "https://www.javatpoint.com/"
    "https://www.tutorialspoint.com/",
    "https://www.wikipedia.org/"

  ];

  List Images=[
    "assets/images/school1.jpg",
    "assets/images/school2.jpg",
    "assets/images/school3.jpg",
    "assets/images/school4.jpg",
    "assets/images/school5.jpg",

  ];

  void initController(int index){
    webViewController= WebViewController();
    webViewController!.loadRequest(Uri.parse("${Link[index]}"));
  }
}