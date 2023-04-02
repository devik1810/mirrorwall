import 'package:flutter/material.dart';
import 'package:mirrorwall/ottplatfromscreen/provider/ott_provider.dart';

import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';




class OTTScreen extends StatefulWidget {
  const OTTScreen({Key? key}) : super(key: key);

  @override
  State<OTTScreen> createState() => _OTTScreenState();
}

class _OTTScreenState extends State<OTTScreen> {

  OTTProvider? ottProviderT;
  OTTProvider? ottProviderF;

  @override
  Widget build(BuildContext context) {
    ottProviderT = Provider.of<OTTProvider>(context, listen: true);
    ottProviderF = Provider.of<OTTProvider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        body: WebViewWidget(controller: ottProviderT!.webViewController!),
      ),
    );
  }
}