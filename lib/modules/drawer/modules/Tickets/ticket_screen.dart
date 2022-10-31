
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toyaapp/modules/drawer/modules/Tickets/widgets/buildActivityItem.dart';
import '../../../../App/color/color.dart';
import '../../../../App/components/components.dart';

class TicketScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: purple2,
          title: const Text('التذاكر'),
          titleSpacing: 0,
          elevation: 0,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios)),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'وفرنا لكم قائمة بافضل الشركات والعروض لشراء تذاكر السفر وافضل الفنادق وبعض الخدمات المساعدة اثناء اقامتكم',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: D_MaterialButtonwithIcon(
                    onPressed: () {},
                    image: 'assets/images/comm.png',
                    text: 'حجز تذكرة',
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text('اليوم الأول',style: TextStyle(color: purple,fontSize: 20),),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: double.infinity,
                  height: 330.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    physics:BouncingScrollPhysics(),
                      itemBuilder: (context,index)=>buildActivityItem(),
                      separatorBuilder:(context,index)=> SizedBox(width: 10,),
                      itemCount: 5
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text('اليوم الثاني',style: TextStyle(color: purple,fontSize: 20),),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: double.infinity,
                  height: 330.h,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      physics:BouncingScrollPhysics(),
                      itemBuilder: (context,index)=>buildActivityItem(),
                      separatorBuilder:(context,index)=> SizedBox(width: 10,),
                      itemCount: 5
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
