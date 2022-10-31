import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../App/color/color.dart';

Widget headerWidget() {
  return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
              top: 0
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed:(){} ,
                child: SvgPicture.asset('assets/images/menu.svg',height: 25.h,width: 25.w,),),
              const Spacer(),
              TextButton(
                  onPressed: (){},
                  child: SvgPicture.asset('assets/images/notif.svg',height: 25.h,width: 25.w,)),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  right: 30
              ),
              child: SizedBox(
                  height: 75.h,
                  width: 123.w,
                  child: const Image(
                    image: AssetImage('assets/images/layer.png'),
                    fit: BoxFit.contain,
                  )),
            ),
            const Text(
              ' معرض الرياض',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text('لألعاب الأطفال',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w200)),
          ],
        ),
      ],
    );
}
