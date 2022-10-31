import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../App/color/color.dart';
Widget gridItem() {
  return Material(
    elevation: 2,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    borderRadius: BorderRadius.circular(5),
    child: Container(
      // height: 290,
      // width: 200,
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Stack(
                children: [
                  Image(
                    image: AssetImage('assets/images/Rectangle 1579.png',),
                    fit: BoxFit.fill,
                    width: 199,
                  ),
                  Positioned(
                      left: 5,
                      top: 5,
                      child: Image(
                          image: AssetImage('assets/images/container.png')
                      )),
                  Positioned(
                    right: 50,
                    child: Image(
                        image: AssetImage('assets/images/logo.png')
                    ),
                  )
                ],
              )
          ),
          Expanded(
              flex: 2,
              child:  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Center(
                      child: Text('اسم العارض المشارك',
                        style: TextStyle(
                            fontSize: 18
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Icon(Icons.phone,size: 12,color: purple,),
                        SizedBox(width: 5.w,),
                        Text('+966123456789',
                          style: TextStyle(
                              fontSize: 14
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Icon(Icons.email,size: 12,color: purple,),
                        SizedBox(width: 5.w,),
                        Text('Mail@Website.com',
                          style: TextStyle(
                              fontSize: 14
                          ),),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Text('هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا من مولد العربى..',
                      style: TextStyle(
                          fontSize: 14
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ))
        ],
      ),
    ),
  );
}