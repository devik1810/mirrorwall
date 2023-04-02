import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../provider/eductaion_provider.dart';

class EducationHome extends StatefulWidget {
  const EducationHome({Key? key}) : super(key: key);

  @override
  State<EducationHome> createState() => _EducationHomeState();
}

class _EducationHomeState extends State<EducationHome> {
  EductaionProvider? eductaionProviderT;
  EductaionProvider? eductaionProviderF;

  @override
  Widget build(BuildContext context) {
    eductaionProviderF = Provider.of<EductaionProvider>(context, listen: false);
    eductaionProviderT = Provider.of<EductaionProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisExtent: 150, mainAxisSpacing: 10,),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              Navigator.pushNamed(context, '3');
              eductaionProviderT!.initController(index);
            },
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                child: Image.asset(
                  "${eductaionProviderT!.Images[index]}",
                  fit: BoxFit.fill,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 3,)),
              ),
            ),
          ),
          itemCount: eductaionProviderT!.Images.length,
        ),
      ),
    );
  }
}
