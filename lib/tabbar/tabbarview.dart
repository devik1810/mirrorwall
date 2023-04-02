import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:provider/provider.dart';

import '../educationscreen/view/education_home.dart';
import '../ottplatfromscreen/view/ott_home.dart';

class TabbarScreen extends StatefulWidget {
  const TabbarScreen({Key? key}) : super(key: key);

  @override
  State<TabbarScreen> createState() => _TabbarScreenState();
}

class _TabbarScreenState extends State<TabbarScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Color(0xff2C0953),
            appBar: AppBar(
              centerTitle: true,
              elevation: 0,
              title: Text(
                "Mirror Wall",
                style: GoogleFonts.lato(fontSize: 30, ),
              ),
              bottom: TabBar(
                indicatorColor: Colors.white,
                tabs: [
                  Tab(
                    child: Text(
                      "Education",
                      style: GoogleFonts.lato(
                        color: Colors.white70,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "OTTplatform",
                      style: GoogleFonts.lato(
                        color: Colors.white70,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
                backgroundColor: Color(0xff2C0953)
            ),
            body: TabBarView(
              children: [
                EducationHome(),
                OTTHome(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
