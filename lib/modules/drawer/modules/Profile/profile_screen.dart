
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toyaapp/modules/drawer/modules/Profile/widgets/headerWidget.dart';

import '../../../../Utils/color/color.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Column(
            children:  [
            HeaderWidget(),
            TabBar(
              indicatorColor: purple,
              automaticIndicatorColorAdjustment:false,
              labelColor: Colors.purple,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                    child: Row(
                      children:
                       [
                        Icon(Icons.credit_card,size: 16,),
                        SizedBox(width: 5.w,),
                        Text( 'التذاكر',style: TextStyle(
                            fontSize: 18
                        )),

                      ]
                    ),
                  ),
                Tab(
                  child: Row(
                      children:
                       [
                        Icon(Icons.person,size: 18),
                        //SizedBox(width: 5.w,),
                        Text( 'الملف الشخصي',style: TextStyle(
                          fontSize: 18
                        ),),

                      ]
                  ),
                ),
              ],
            ),
             Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TabBarView(
                    children: [
                    cartPart(),
                    profilePart()
                ]
                ),
              ),
            )
          ],
        ),
        ),

      ),
    );
  }



  Widget profilePart(){
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.person,
              color: purple,
              size: 16,
            ),
             SizedBox(
              width: 5.w,
            ),
            const Text(
              'محمد أحمد',
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
             SizedBox(
              width: 5.w,
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
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ],
    );
  }

  Widget cartPart(){
    return ListView.separated(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context,index)=>buildListItem(),
        separatorBuilder: (context,index)=>SizedBox(height: 20,),
        itemCount: 8
    );
  }

  Widget buildListItem() {
    return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
          height: 40.h,
          width: 40.w,
          decoration: BoxDecoration(
            color: gray2,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: SvgPicture.asset('assets/images/icon/cart.svg',),
          ),

          ),
      SizedBox(width: 10.w,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('تذكرة دخول المعرض',style: TextStyle(fontSize: 20),),
          Text('15/05/2022',style: TextStyle(color: gray,fontSize: 16),),
        ],
      )
    ],
  );
  }
}





