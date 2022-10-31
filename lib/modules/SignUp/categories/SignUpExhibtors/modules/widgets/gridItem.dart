import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../App/color/color.dart';

Widget gridItemPackage(int index){
  return Material(
    elevation: 2,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    borderRadius: BorderRadius.circular(12),
    child: Container(
      height: 200,
      child: Stack(
        children: [
          Center(
            child: Column(
              children: [
                Image.asset('assets/images/shepherds.png'),
                Text('الراعي الماسي',style: TextStyle(
                  fontSize: 20
                ),)
              ],
            ),
          ),
          Positioned(
              left: 5,
              right: 5,
              top: 5,
              child: Text('$index',style: TextStyle(color: gray),))
        ],
      ),
    ),
  );
}