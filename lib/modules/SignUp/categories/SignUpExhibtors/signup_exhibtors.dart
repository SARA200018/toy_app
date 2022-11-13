import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../Utils/color/color.dart';
import '../../../../Utils/components/components.dart';
import '../../../../Utils/images/images.dart';
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
          physics: BouncingScrollPhysics(),
          child: SafeArea(
            child: Column(
              children: [
                buildHeader(context),
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
                      SizedBox(height: 10.h,),
                      D_TextFromField(
                        controller: email,
                        label: 'البريد الالكتروني',
                        prefixIcon: Icons.email,
                        prefixIconColor: Colors.purple,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 10.h,),
                      D_TextFromField(
                          controller: userName,
                          label: 'رقم الجوال',
                          prefixIcon: Icons.phone,
                          prefixIconColor: Colors.purple,
                          keyboardType: TextInputType.phone
                      ),
                      SizedBox(height: 10.h,),
                      D_TextFromField(
                        controller: company,
                        label: 'اسم الشركة',
                        prefixIcon: Icons.business,
                        prefixIconColor: Colors.purple,
                        keyboardType: TextInputType.text,

                      ),
                      SizedBox(height: 10.h,),
                      D_TextFromField(
                        controller: location,
                        label: 'الدولة',
                        prefixIcon: Icons.location_on_sharp,
                        prefixIconColor: Colors.purple,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 10.h,),
                      D_TextFromField(
                        controller: location,
                        label: 'شعار الشركة',
                        prefixIcon: Icons.note,
                        prefixIconColor: Colors.purple,
                        suffixIcon: suffixBtn(),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 10,),
                      D_TextFromField(
                        controller: location,
                        label: 'ملفات الشركة التعريفية',
                        prefixIcon: Icons.note,
                        prefixIconColor: Colors.purple,
                        keyboardType: TextInputType.text,
                        suffixIcon: suffixBtn(),
                      ),
                      SizedBox(height: 10,),
                      D_TextFromField(
                        controller: location,
                        label: 'ملفات الشركة الرسمية',
                        prefixIcon: Icons.note,
                        prefixIconColor: Colors.purple,
                        keyboardType: TextInputType.text,
                        suffixIcon: suffixBtn(),
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

  Widget buildHeader(BuildContext context) {
    return Container(
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
                              child: SvgPicture.asset(Images.exhibtorsIcon,color: Colors.white,),
                            ),),

                          Text(
                            'انشاء حساب عارض',
                            style: TextStyle(
                                color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),

                    ),
                  ],
                ),
              );
  }
  Widget suffixBtn(){
    return  Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: gray2,
        ),

        child: TextButton(
          child: Text('استعراض',style: TextStyle(color: Colors.black,fontSize: 16),),
          onPressed: (){

          },
        ),
      ),
    );
  }
}
