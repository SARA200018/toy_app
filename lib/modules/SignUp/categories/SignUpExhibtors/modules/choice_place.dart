import 'package:flutter/material.dart';
import 'package:toyaapp/modules/SignUp/categories/SignUpExhibtors/modules/full_screen.dart';
import '../../../../../Utils/color/color.dart';
import '../../../../../Utils/components/components.dart';
import '../../../../../Utils/components/radip_button.dart';
import 'choice_package.dart';

class ChoicePlace extends StatelessWidget {
  const ChoicePlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: purple2,
          title: const Text('اختر مكان العرض'),
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
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                    'اختر من الخريطة موقع معرضك حسب الرقم ثم اختاره من القائمة التي في الاسفل ',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              GestureDetector(
                  onTap: (){
                    NavigatorTo(context, FullScreen());
                  },
                  child: Image.asset('assets/images/map.png')),
              RadioWidget(),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 20
                ),
                child: Center(
                  child: D_MaterialButton(
                      onPressed: (){
                        NavigatorTo(context, (ChoicePackage()));
                      },
                      text: 'تسجيل'
                  ),
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
