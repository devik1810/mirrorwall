import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../provider/eductaion_provider.dart';


class EducationScreen extends StatefulWidget {
  const EducationScreen({Key? key}) : super(key: key);

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {

  EductaionProvider? eductaionProviderT;
  EductaionProvider? eductaionProviderF;

  @override
  Widget build(BuildContext context) {
    eductaionProviderT = Provider.of<EductaionProvider>(context, listen: true);
    eductaionProviderF = Provider.of<EductaionProvider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        body: WebViewWidget(controller: eductaionProviderT!.webViewController!),
      ),
    );
  }
}