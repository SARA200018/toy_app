import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../App/color/color.dart';
import '../../../../App/components/components.dart';
import 'modules/choice_place.dart';

class SignUpExhibtors extends StatelessWidget {

  var userName = TextEditingController();
  var email = TextEditingController();
  var location = TextEditingController();
  var company = TextEditingController();
  var password = TextEditingController();
  var confirmPassword = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 200.h,
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
                                CircleAvatar(
                                  backgroundColor: Colors.black.withOpacity(.2),
                                  radius: 35,
                                  child: SvgPicture.asset(
                                      'assets/images/Group 2970.svg'),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'انشاء حساب عارض',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                )
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
                          controller: userName,
                          label: 'رقم الجوال',
                          prefixIcon: Icons.phone,
                          prefixIconColor: Colors.purple,
                          keyboardType: TextInputType.phone
                      ),
                      SizedBox(height: 10,),
                      D_TextFromField(
                        controller: company,
                        label: 'اسم الشركة',
                        prefixIcon: Icons.business,
                        prefixIconColor: Colors.purple,
                        keyboardType: TextInputType.text,
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
                        label: 'شعار الشركة',
                        prefixIcon: Icons.note,
                        prefixIconColor: Colors.purple,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 10,),
                      D_TextFromField(
                        controller: location,
                        label: 'ملفات الشركة التعريفية',
                        prefixIcon: Icons.note,
                        prefixIconColor: Colors.purple,
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: 10,),
                      D_TextFromField(
                        controller: location,
                        label: 'ملفات الشركة الرسمية',
                        prefixIcon: Icons.note,
                        prefixIconColor: Colors.purple,
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: 10,),
                      D_TextFromField(
                        controller: password,
                        label: 'كلمة المرور',
                        prefixIcon: Icons.lock,
                        prefixIconColor: Colors.purple,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 10,),
                      D_TextFromField(
                        controller: confirmPassword,
                        label: 'اعادة كلمة المرور',
                        prefixIcon: Icons.lock,
                        prefixIconColor: Colors.purple,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 20,),
                      Center(
                        child: D_MaterialButton(
                            onPressed: (){
                              NavigatorTo(context, ChoicePlace());
                            },
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
