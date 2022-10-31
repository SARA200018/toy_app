
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../App/color/color.dart';

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
            headerWidget(),
            TabBar(
              indicatorColor: purple,
              automaticIndicatorColorAdjustment:false,
              labelColor: Colors.purple,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                    child: Row(
                      children:
                      const [
                        Icon(Icons.credit_card,size: 16,),
                        SizedBox(width: 5,),
                        Text( 'التذاكر',style: TextStyle(
                            fontSize: 18
                        )),

                      ]
                    ),
                  ),
                Tab(
                  child: Row(
                      children:
                      const [
                        Icon(Icons.person,size: 16),
                        SizedBox(width: 5,),
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

  Widget headerWidget(){
    return Container(
      width: double.infinity,
      height: 200.h,
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
                  IconButton(onPressed: (){}, icon: Image(image: AssetImage('assets/images/Component 21 – 2.png'),),),
                ],
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.white),
                        image: const DecorationImage(
                            image: AssetImage(
                                'assets/images/Component 6 – 4.png')
                        ),
                      ),
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
            const SizedBox(
              width: 5,
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
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: gray2,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Image(
            image: AssetImage('assets/images/comm.png'),
            color: purple,
          )),
      SizedBox(width: 10,),
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





