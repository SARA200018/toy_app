import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toyaapp/App/components/components.dart';
import 'package:toyaapp/modules/SignUp/categories/sign_up_visitor.dart';
import 'package:toyaapp/modules/SignUp/categories/SignUpExhibtors/signup_exhibtors.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset('assets/images/back.svg'),
              ),
              Center(
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
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          Image(
                            width: 300,
                            height: 150,
                            image: AssetImage(
                              'assets/images/Rectangle 1580.png',
                            ),
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.black.withOpacity(.2),
                                radius: 35,
                                child: SvgPicture.asset(
                                    'assets/images/Group 2970.svg'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'حساب زائر',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    InkWell(
                      onTap: (){
                        NavigatorTo(context,SignUpExhibtors());
                      },
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          Image(
                            width: 300,
                            height: 150,
                            image: AssetImage(
                              'assets/images/Rectangle 1580.png',
                            ),
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.black.withOpacity(.2),
                                radius: 35,
                                child: SvgPicture.asset(
                                    'assets/images/Group 2970.svg'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'حساب زائر',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    InkWell(
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          Image(
                            width: 300,
                            height: 150,
                            image: AssetImage(
                              'assets/images/Rectangle 1580.png',
                            ),
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.black.withOpacity(.2),
                                radius: 35,
                                child: SvgPicture.asset(
                                    'assets/images/Group 2970.svg'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'حساب زائر',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
