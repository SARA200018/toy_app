import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toyaapp/modules/drawer/modules/Profile/modules/editPassword.dart';
import '../../../../../Utils/color/color.dart';
import '../../../../../Utils/components/components.dart';
import '../modules/editProfileInfo.dart';

class HeaderWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 220.h,
        color: purple1,
        child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 8
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios,color: Colors.white,)),
                    Spacer(),
                    IconButton(onPressed: (){
                      showModalBottomSheet(
                          isScrollControlled: true,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft:  Radius.circular(10),
                              ),
                          ),
                          context: context,
                          builder: (context)=>buildSheet(context));
                     }, icon: Image(image: AssetImage('assets/images/Component 21 – 2.png'),),),
                  ],
                ),
                Center(
                  child: Column(
                    children: [
                      Container(
                        width: 80.w,
                        height: 80.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.white),
                          ),
                          child: Icon(Icons.person,size: 40,color: Colors.white,),
                        ),
                      const Text(
                        'الملف الشخصي',
                        style: TextStyle(
                            color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      );
  }
  Widget buildSheet(context){
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        height: 220.h,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(onPressed: (){
                  Navigator.of(context).pop();

                },
                  icon: Icon(Icons.close),
                  ),
              ],
            ),
            SizedBox(height: 20.h,),
            D_MaterialButtonwithIcon(
                width: 250.w,
                onPressed: (){
                  NavigatorTo(context, EditProfileInfo());
                },
                icon:Icons.person_sharp,
                text: 'تعديل البيانات الشخصية'
            ),
            SizedBox(height: 10.h,),
            D_MaterialButtonwithIcon(
                width: 250.w,
                onPressed: (){
                  NavigatorTo(context, EditPassword());
                },
                icon:Icons.lock,
                text: 'تغيير كلمة المرور'
            ),
          ],
        ),
      ),
    );
  }
}

