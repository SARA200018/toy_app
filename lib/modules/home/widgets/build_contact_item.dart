import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toyaapp/Utils/color/color.dart';
Widget buildContactItem(){
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 10),
        child: CircleAvatar(
          radius: 50.r,
          backgroundImage: AssetImage('assets/images/pexels.jpg'),
        ),
      ),
      Expanded(
        child: Column(
          children: [
            Text('أحمد محمد',style: TextStyle(fontWeight: FontWeight.bold),),
            Text('مدير مبيعات',style: TextStyle(fontSize: 12),),
          ],
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
              onPressed: (){},
              child: Icon(Icons.email_rounded,color: purple,)
          ),
          TextButton(
              onPressed: (){},
              child: Icon(Icons.phone,color: purple,)
          ),
        ],
      ),
    ],
  );
}