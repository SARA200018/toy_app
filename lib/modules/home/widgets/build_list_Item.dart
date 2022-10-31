import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../App/color/color.dart';

List<String> images = ['assets/images/comm.png','assets/images/gift.png','assets/images/plan.png','assets/images/comm.png'];

List<String> titles = ['التذاكر','الرعاة','السفر والفنادق','التذاكر'];

Widget buildListItem(context,String? image,String? title){
 return Directionality(
   textDirection: TextDirection.rtl,
   child: Material(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      borderRadius: BorderRadius.circular(18.r),
      elevation: 5,
      child: Container(
        height: 80.h,
        width: 100.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                radius: 20.r,
                backgroundColor: purple,
                child: Image(
                  image: AssetImage('${image}'),
                )),
            SizedBox(
              height: 10.h,
            ),
            Text(
              '${title}',
              style: TextStyle(color: purple),
            )
          ],
        ),
      ),
    ),
 );
}