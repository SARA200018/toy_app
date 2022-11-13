import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Utils/color/color.dart';
import '../../../Utils/components/components.dart';
import '../../../Utils/images/images.dart';


class SignUpVisitor extends StatelessWidget {

  var userName = TextEditingController();
  var email = TextEditingController();
  var phone = TextEditingController();
  var location = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 200.h,
                  color: purple1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                        child:Column(
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
                                child: SvgPicture.asset(Images.proIcon,color: Colors.white,),
                              ),),

                            Text(
                              'انشاء حساب زائر',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),

                      ),
                      // Center(
                      //   child: Column(
                      //     children: [
                      //       Container(
                      //         width: 80.w,
                      //         height: 80.h,
                      //         decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(40),
                      //           border: Border.all(color: Colors.white),
                      //           image: const DecorationImage(
                      //               image: AssetImage(
                      //                   'assets/images/Component 6 – 4.png')
                      //           ),
                      //         ),
                      //       ),
                      //       SizedBox(height: 10.h,),
                      //       const Text(
                      //         'انشاء حساب زائر',
                      //         style: TextStyle(
                      //             color: Colors.white, fontSize: 18),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      D_TextFromField(
                          controller: userName,
                          label: 'الاسم',
                          prefixIcon: Icons.person,
                          prefixIconColor: Colors.purple,
                          keyboardType: TextInputType.emailAddress
                      ),
                      SizedBox(height: 10,),
                      D_TextFromField(
                        controller: email,
                        label: 'البريد الالكتروني',
                        prefixIcon: Icons.email,
                        prefixIconColor: Colors.purple,
                        keyboardType: TextInputType.emailAddress,

                      ),
                      SizedBox(height: 10,),
                      D_TextFromField(
                          controller: phone,
                          label: 'رقم الجوال',
                          prefixIcon: Icons.phone,
                          prefixIconColor: Colors.purple,
                          keyboardType: TextInputType.phone
                      ),
                      SizedBox(height: 10,),
                      D_TextFromField(
                        controller: location,
                        label: 'الدولة',
                        prefixIcon: Icons.location_on_sharp,
                        prefixIconColor: Colors.purple,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 10,),
                      D_TextFromField(
                        controller: location,
                        label: 'كلمة المرور',
                        prefixIcon: Icons.lock,
                        prefixIconColor: Colors.purple,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 10,),
                      D_TextFromField(
                        controller: location,
                        label: 'اعادة كلمة المرور',
                        prefixIcon: Icons.lock,
                        prefixIconColor: Colors.purple,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 20,),
                      Center(
                        child: D_MaterialButton(
                            onPressed: (){},
                            text: 'تسجيل'
                        ),
                      ),
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
