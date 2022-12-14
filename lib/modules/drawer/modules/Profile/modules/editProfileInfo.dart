import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toyaapp/modules/drawer/modules/Profile/profile_screen.dart';

import '../../../../../Utils/color/color.dart';
import '../../../../../Utils/components/components.dart';


class EditProfileInfo extends StatelessWidget {
   EditProfileInfo({Key? key}) : super(key: key);

   var userName = TextEditingController();
   var email = TextEditingController();
   var phone = TextEditingController();
   var location = TextEditingController();

   @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 250.h,
                  color: purple1,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 8
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios,color: Colors.white,)),
                          Center(
                            child: Column(
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    border: Border.all(color: Colors.white),
                                  ),
                                  child:Icon( Icons.person,size: 40,color: Colors.white,),
                                ),
                                SizedBox(height: 5.h,),
                                const Text(
                                  '?????????? ???????????????? ??????????????',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      D_TextFromField(
                          controller: userName,
                          label: '??????????',
                          prefixIcon: Icons.person,
                          prefixIconColor: Colors.purple,
                          keyboardType: TextInputType.text
                      ),
                      SizedBox(height: 10,),
                      D_TextFromField(
                        controller: email,
                        label: '???????????? ????????????????????',
                        prefixIcon: Icons.email,
                        prefixIconColor: Colors.purple,
                        keyboardType: TextInputType.emailAddress,

                      ),
                      SizedBox(height: 10,),
                      D_TextFromField(
                          controller: phone,
                          label: '?????? ????????????',
                          prefixIcon: Icons.phone,
                          prefixIconColor: Colors.purple,
                          keyboardType: TextInputType.phone
                      ),
                      SizedBox(height: 10,),
                      D_TextFromField(
                        controller: location,
                        label: '????????????',
                        prefixIcon: Icons.location_on_sharp,
                        prefixIconColor: Colors.purple,
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ],
                  ),
                ),
                Center(
                  child: D_MaterialButton(
                      onPressed: (){
                        NavigatorTo(context, ProfileScreen());
                      },
                      text: '??????'
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
