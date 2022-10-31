import 'package:flutter/material.dart';
import 'package:toyaapp/App/components/components.dart';
import 'package:toyaapp/modules/SignUp/categories/SignUpExhibtors/modules/full_screen.dart';
import 'package:toyaapp/modules/SignUp/categories/SignUpExhibtors/modules/widgets/gridItem.dart';
import '../../../../../App/color/color.dart';

class ChoicePackage extends StatelessWidget {
  const ChoicePackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: purple2,
          title: const Text('اختر الباقة'),
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
                  onTap: () {
                    NavigatorTo(context, FullScreen());
                  },
                  child: Image.asset('assets/images/map.png')),
              SizedBox(height: 20,),
              GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                //childAspectRatio: 320 / 200,
                shrinkWrap: true,
                crossAxisSpacing: 10,
                padding: EdgeInsetsDirectional.all(10),
                children: List.generate(8, (index) {
                  return gridItemPackage(++index);
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
