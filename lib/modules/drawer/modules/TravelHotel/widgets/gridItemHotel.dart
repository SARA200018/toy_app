import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../App/color/color.dart';

Widget gridItemHotel(){
  return Material(
    elevation: 2,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    borderRadius: BorderRadius.circular(12),
    child: Stack(
      children: [
        Center(
          child: Column(
            children: [
              Image.asset('assets/images/company.png'),
              Text('اسم الشركة',style: TextStyle(
                  fontSize: 18
              ),)
            ],
          ),
        ),
      ],
    ),
  );
}