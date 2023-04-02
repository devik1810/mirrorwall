import 'package:flutter/material.dart';
import 'package:mirrorwall/ottplatfromscreen/provider/ott_provider.dart';
import 'package:mirrorwall/ottplatfromscreen/view/ott_home.dart';
import 'package:mirrorwall/ottplatfromscreen/view/ott_screen.dart';
import 'package:mirrorwall/tabbar/tabbarview.dart';
import 'package:provider/provider.dart';

import 'educationscreen/provider/eductaion_provider.dart';
import 'educationscreen/view/education_home.dart';
import 'educationscreen/view/education_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => EductaionProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => OTTProvider(),
      )
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => TabbarScreen(),
        '2': (context) => EducationHome(),
        '3': (context) => EducationScreen(),
        '4': (context) => OTTHome(),
        '5': (context) => OTTScreen(),
      },
    ),
  ));
}
