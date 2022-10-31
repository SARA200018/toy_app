import 'package:flutter/material.dart';
import 'package:toyaapp/modules/drawer/modules/TravelHotel/widgets/gridItemHotel.dart';

import '../../../../App/color/color.dart';

class TravelHotel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: purple2,
          title: const Text('السفر والفنادق'),
          titleSpacing: 0,
          elevation: 0,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios)),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'وفرنا لكم قائمة بافضل الشركات والعروض لشراء تذاكر السفر وافضل الفنادق وبعض الخدمات المساعدة اثناء اقامتكم',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20,),
              GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                //childAspectRatio: 320 / 200,
                shrinkWrap: true,
                crossAxisSpacing: 10,
                padding: EdgeInsetsDirectional.all(10),
                children: List.generate(8, (index) {
                  return gridItemHotel();
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
