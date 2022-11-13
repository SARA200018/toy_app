import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../Utils/color/color.dart';
import '../../../../Utils/components/components.dart';

class CallUsScreen extends StatelessWidget {
  CallUsScreen({Key? key}) : super(key: key);

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneContrller = TextEditingController();
  var stateController = TextEditingController();
  var titleContrller = TextEditingController();
  var letterController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: purple2,
          title: const Text('اتصل بنا'),
          titleSpacing: 0,
          elevation: 0,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios)),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'بيانات التواصل',
                  style: TextStyle(color: purple, fontSize: 20),
                ),
                const Text(
                  'نعمل على راحتكم على مدار الساعه مع فريق دعم فني مميز لتسهيل جميع طلباتكم ومتابعه مراسلاتكم والرد باسرع وقت ممكن ويمكنك ايضا التواصل مع مدراء المبيعات لطلب التسيجل او الاستفسار وتسهيل التعاون معكم وتوفير جميع الخدمات باسلوب مميز وراقي ',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: purple,
                      size: 16,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      '+966123456789',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: purple,
                      size: 16,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      '+966123456789',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: purple,
                      size: 16,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      '+Mail@Website.com',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: purple,
                      size: 16,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    const Text(
                      'السعودية - الرياض - أرض المعارض',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                        'assets/images/icon_social_media/linkedin.svg'),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset(
                        'assets/images/icon_social_media/twitter.svg'),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset(
                        'assets/images/icon_social_media/instagram.svg'),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset(
                        'assets/images/icon_social_media/facebook.svg'),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'راسلنا',
                  style: TextStyle(color: purple, fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      D_TextFromField(
                          controller: nameController,
                          label: 'الاسم',
                          prefixIcon: Icons.person,
                          prefixIconColor: purple,
                          keyboardType: TextInputType.text),
                      SizedBox(
                        height: 20.h,
                      ),
                      D_TextFromField(
                          controller: nameController,
                          label: 'البريد الالكتروني',
                          prefixIcon: Icons.email,
                          prefixIconColor: purple,
                          keyboardType: TextInputType.emailAddress),
                      SizedBox(
                        height: 20.h,
                      ),
                      D_TextFromField(
                          controller: nameController,
                          label: 'رقم الجوال',
                          prefixIcon: Icons.phone,
                          prefixIconColor: purple,
                          keyboardType: TextInputType.phone),
                      SizedBox(
                        height: 20.h,
                      ),
                      D_TextFromField(
                          controller: stateController,
                          label: 'الدولة',
                          prefixIcon: Icons.location_on_sharp,
                          prefixIconColor: purple,
                          keyboardType: TextInputType.text),
                      SizedBox(
                        height: 20.h,
                      ),
                      TextFormFailed(label: 'عنوان الرسالة'),
                      SizedBox(
                        height: 20.h,
                      ),
                      TextFormFailed(label: 'اكتب رسالتك هنا', maxLine: 5),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Center(
                    child: D_MaterialButton(
                  onPressed: () {},
                  text: 'إرسال',
                  width: 200,
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
