import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utils/color/color.dart';

class ExhibitorsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: purple2,
          title: const Text('العارضين'),
          titleSpacing: 0,
          elevation: 0,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios)),
        ),
        body: GridView.count(
            physics: const BouncingScrollPhysics(),
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            childAspectRatio:  200/290 ,
            shrinkWrap: true,
            crossAxisSpacing: 10,
            padding: EdgeInsetsDirectional.all(10),
            children:List.generate(10,(index)=>gridItem())
        )

      ),
    );
  }
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
                      width: 199.w,
                    ),
                    Positioned(
                        left: 5,
                        top: 5,
                        child: Image(
                            image: AssetImage('assets/images/container.png')
                        )),
                    Positioned(
                      right: 50.w,
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
                      SizedBox(height: 5.h,),
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
                      SizedBox(height: 5.h,),
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
                      SizedBox(height: 5.h,),
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

}