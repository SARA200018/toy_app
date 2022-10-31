import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
Widget buildContactItem(){
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/images/pexels.jpg'),
        ),
      ),
      SizedBox(height: 5.h,),
      Text('أحمد محمد',style: TextStyle(fontWeight: FontWeight.bold),),
      Text('مدير مبيعات'),
      SizedBox(height: 5.h,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
              onPressed: (){},
              child: SvgPicture.asset('assets/images/letter.svg')
          ),
          TextButton(
              onPressed: (){},
              child: SvgPicture.asset('assets/images/phone.svg')
          ),
        ],
      ),
    ],
  );
}