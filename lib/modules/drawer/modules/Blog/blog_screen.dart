
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toyaapp/modules/drawer/modules/Blog/modules/blog_details_screen.dart';

import '../../../../Utils/color/color.dart';
import '../../../../Utils/components/components.dart';

class BlogScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: purple2,
          title: Text('المدونة'),
          titleSpacing: 0,
          elevation: 0,
          leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
              child: Icon(Icons.arrow_back_ios)),
        ),
        body: ListView.separated(
          scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context,index)=>InkWell(
                onTap: (){
                  NavigatorTo(context, DetailsBlogScreen());
                },
                child: buildBlogItem()
            ),
            separatorBuilder:  (context,index)=>SizedBox(height: 1,),
            itemCount: 8
        )
      ),
    );
  }
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
}
