import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toyaapp/Utils/images/images.dart';

import '../../../Utils/color/color.dart';

List<String> images = [Images.cartIcon,Images.exhibtorsIcon,Images.planIcon,Images.cartIcon];

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
                child: SvgPicture.asset('$image',color: Colors.white,)
        ),
          // child: Image(
                //   image: AssetImage('${image}'),
                // )),
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