import 'package:flutter/material.dart';
import 'package:toyaapp/modules/drawer/modules/exhibitors/widgets/gridItem.dart';

import '../../../../App/color/color.dart';

class ExhibitorsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: purple2,
          title: const Text('العارضين'),
          titleSpacing: 0,
          elevation: 0,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios)),
        ),
        body: GridView.count(
            physics: const BouncingScrollPhysics(),
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            childAspectRatio:  200/290 ,
            shrinkWrap: true,
            crossAxisSpacing: 10,
            padding: EdgeInsetsDirectional.all(10),
            children:List.generate(10,(index)=>gridItem())
        )

      ),
    );
  }

}