import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toyaapp/modules/SignUp/categories/sign_up_visitor.dart';
import 'package:toyaapp/modules/SignUp/categories/SignUpExhibtors/signup_exhibtors.dart';

import '../../Utils/color/color.dart';
import '../../Utils/components/components.dart';
import '../../Utils/images/images.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purple1,
      body: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios,color: Colors.white,)),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Column(
                      children: [
                        Text(
                          'اختر نوع الحساب',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 10,),
                        InkWell(
                          onTap: (){
                            NavigatorTo(context, SignUpVisitor());
                          },
                          child: buildStack(
                              'assets/images/Rectangle 1580.png',
                              Images.proIcon,'حساب زائر'
                          ),
                        ),
                        SizedBox(height: 10,),
                        InkWell(
                          onTap: (){
                            NavigatorTo(context,SignUpExhibtors());
                          },
                          child: buildStack('assets/images/Rectangle 1579.png',
                              Images.exhibtorsIcon
                              ,'حساب عارض'),
                        ),
                        SizedBox(height: 10,),
                        InkWell(
                          child: buildStack(
                              'assets/images/Rectangle 1578.png',Images.shapIcon,'حساب راعي'),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Stack buildStack(String PImage ,String image,String text) {
    return Stack(alignment: AlignmentDirectional.center,
                      children: [
                        Opacity(
                          opacity:0.7,
                          child: Image(
                            width: 248,
                            height: 180,
                            image: AssetImage(
                              '$PImage',
                            ),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              width: 50.w,
                              height: 50.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(color: Colors.white),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SvgPicture.asset('$image',color: Colors.white,),
                              ),),

                             Text(
                              '$text',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    );
  }
}
