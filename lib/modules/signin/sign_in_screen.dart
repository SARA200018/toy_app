import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toyaapp/App/color/color.dart';
import 'package:toyaapp/modules/SignUp/sign_up_screen.dart';

import '../../App/components/components.dart';

class SignInScreen extends StatelessWidget {

  var userName = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: SafeArea(
            child:  Column(
                children: [
                Container(
                  width: double.infinity,
                  height: 250.h,
                  color: purple,
                  child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: (){},
                              child: SvgPicture.asset('assets/images/back.svg')),
                          Center(
                            child: Column(
                              children: [
                                SizedBox(
                                    height: 50.h,
                                    width: 50.w,
                                    child: const Image(
                                      image: AssetImage('assets/images/layer.png'),
                                      fit: BoxFit.cover,
                                    )),
                                SizedBox(
                                  height: 10.h,
                                ),
                                const Text(
                                  'معرض الرياض',
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
                          ),

                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.h,),
                      Text('تسجيل دخول',style: TextStyle(
                        color: Colors.purple,
                        fontSize: 18
                      ),),
                      SizedBox(height: 10,),
                      D_TextFromField(
                          controller: userName,
                          label: 'البريد الالكتروني',
                          prefixIcon: Icons.person,
                          prefixIconColor: Colors.purple,
                          
                          keyboardType: TextInputType.emailAddress
                      ),
                      SizedBox(height: 20,),
                      D_TextFromField(
                          controller: password,
                          label: 'كلمة المرور',
                          prefixIcon: Icons.lock,
                          prefixIconColor: Colors.purple,
                          keyboardType: TextInputType.emailAddress,

                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Checkbox(
                              activeColor: Colors.purple,
                              value: true, onChanged:(value){} ),
                          Text('تذكرني',style: TextStyle(
                            fontSize: 18
                          ),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Center(
                        child: D_MaterialButton(
                            onPressed: (){},
                            text: 'دخول'
                        ),
                      ),
                      SizedBox(height: 10,),
                      Center(
                        child: TextButton(
                            onPressed: (){},
                            child:Text('نسيت كلمة المرور؟',style: TextStyle(
                              fontSize: 18,
                              color: Colors.black
                            ),)
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text('ليس لديك حساب؟',style: TextStyle(
                            fontSize: 16,
                            color: Colors.black
                        )),
                        TextButton(
                              onPressed: (){
                                NavigatorTo(context, SignUpScreen());
                              },
                              child:Text('انشاء حساب',style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),)
                          ),
                      ],)

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
