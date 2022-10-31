import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../App/color/color.dart';

Widget buildBlogItem() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Stack(
      children: [
        Container(
          height: 200.h,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: NetworkImage(
                    'https://online.vu.edu.au/sites/default/files/styles/blogfeature_large/public/field/image/Easiest_countries_to_start_a_business_main_image.jpeg?itok=PZUs7eRQ'
                ),
                fit: BoxFit.cover,
              )
          ),
        ),
        Positioned(
          top: 130.h,
          right: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('معرض الرياض لألعاب الاطفال',style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,),
              ),
              SizedBox(height: 5.h,),
              Text('22/04/2022',style: TextStyle(
                color: gray,
                fontSize: 16,),
              ),
            ],
          ),
        )
      ],
    ),
  );
}