
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../App/color/color.dart';

class ShepherdsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: purple2,
          title: const Text('الرعاة'),
          titleSpacing: 0,
          elevation: 0,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios)),
        ),
        body: Material(
          elevation: 2,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          borderRadius: BorderRadius.circular(5),
          child: SizedBox(
            height: 400.h,
            width: double.infinity,
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Image(
                      image: AssetImage('assets/images/shepherds.png',),
                      height: 100,
                      width: 100,
                      fit: BoxFit.contain,
                    ),
                   SizedBox(height: 5,),
                   Text('الراعي الاستراتيجي',style: TextStyle(fontSize: 18),)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Image(
                            image: AssetImage('assets/images/Rectangle 1504.png'),
                            height: 55,
                            width: 55,
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(width: 5,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('تـــيـم واي',style: TextStyle(
                                  fontSize: 20,
                                ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text('TEAM WAY',style: TextStyle(
                                  fontSize: 18,
                                ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10.h,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Row(
                            children: [
                              Icon(Icons.phone,size: 12,color: purple,),
                              SizedBox(width: 5.w,),
                              const Text('+966123456789',
                                style: TextStyle(
                                    fontSize: 14
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5,),
                          Row(
                            children: [
                              Icon(Icons.email,size: 12,color: purple,),
                              SizedBox(width: 5.w,),
                              const Text('Mail@Website.com',
                                style: TextStyle(
                                    fontSize: 14
                                ),),
                            ],
                          ),
                          const SizedBox(height: 5,),
                          const Text('هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا من مولد العربى..',
                            style: TextStyle(
                                fontSize: 14
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                        'assets/images/linkedin.png',height: 24,width: 24,),
                    Image.asset(
                        'assets/images/icon_social_media/twitter.png'),
                    Image.asset(
                        'assets/images/icon_social_media/instagram.png'),
                    Image.asset(
                        'assets/images/icon_social_media/facebook.png'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
