import 'package:flutter/material.dart';
import 'package:mirrorwall/ottplatfromscreen/provider/ott_provider.dart';

import 'package:provider/provider.dart';


class OTTHome extends StatefulWidget {
  const OTTHome({Key? key}) : super(key: key);

  @override
  State<OTTHome> createState() => _OTTHomeState();
}

class _OTTHomeState extends State<OTTHome> {
  OTTProvider? ottProviderT;
  OTTProvider? ottProviderF;

  @override
  Widget build(BuildContext context) {
    ottProviderF = Provider.of<OTTProvider>(context, listen: false);
    ottProviderT = Provider.of<OTTProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisExtent: 150, mainAxisSpacing: 10,),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              Navigator.pushNamed(context, '5');
              ottProviderT!.initController(index);
            },
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                child: Image.asset(
                  "${ottProviderT!.Images[index]}",
                  fit: BoxFit.fill,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 3,)),
              ),
            ),
          ),
          itemCount: ottProviderT!.Images.length,
        ),
      ),
    );
  }
}
