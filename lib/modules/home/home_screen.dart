import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toyaapp/modules/home/widgets/build_contact_item.dart';
import 'package:toyaapp/modules/home/widgets/build_list_Item.dart';
import 'package:toyaapp/modules/home/widgets/header_widget.dart';

import '../../Utils/color/color.dart';
import '../../Utils/components/components.dart';
import '../../Utils/navigation/drawer_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: NavigationDrawer(),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Stack(
              children: [
                SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: double.infinity,
                          height: 230.h,
                          color: purple1,
                          child: headerWidget(context)),
                      SizedBox(
                        height: 50.h,
                      ),
                      SizedBox(
                        height: 400.h,
                        width: double.infinity,
                        child: ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Stack(
                            children: [
                              SizedBox(
                                height: 400.h,
                                width: 300.w,
                                child: const Image(
                                  image: AssetImage(
                                    'assets/images/bacImg.png',
                                  ),
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      right:20
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                         Text(
                                          'معرض الرياض',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                         Text(
                                          'لألعاب الأطفال',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300,
                                              fontSize: 20.sp),
                                        ),
                                         Text(
                                          'هاهو معرض الرياض لألعاب الأطفال قد انطلق\n وهو يعدّ من أهم وامتع المعارض التي تقدمها\nالمملكة العربية السعودية',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12.sp,
                                          ),
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsetsDirectional.only(
                                      start: 50.w,
                                      end: 50.w,
                                      bottom: 50.h
                                    ),
                                    child: D_MaterialButton(
                                      text: 'حجز التذاكر',
                                      onPressed: () {},
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          separatorBuilder: (context, index) => const SizedBox(
                            width: 0,
                          ),
                          itemCount: 4,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'المساعدة',
                                style: TextStyle(
                                    color: purple,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                               Text(
                                'سيسعد فريق المبيعات لدينا بالإجابة على أي أسئلة قد تكون لديك ومساعدتك في التسجيل',
                                style: TextStyle(fontSize: 12),
                              )
                            ]),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 234.h,
                        child: ListView.separated(
                            padding:
                            const EdgeInsetsDirectional.only(
                              start: 10,
                              bottom: 2,
                            ),
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Material(
                                  elevation: 3,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  borderRadius: BorderRadius.circular(20),
                                  child: SizedBox(
                                    width: 170.w,
                                    height: 250,
                                    child: buildContactItem(),
                                  ),
                                ),
                            separatorBuilder: (context, index) => SizedBox(
                                  width: 10.w,
                                ),
                            itemCount: 6
                        ),
                      ),
                     TextButton(
                         onPressed:(){},
                         child: Text(
                             'جديد المدونة',
                           style: TextStyle(
                             color: purple,
                             fontSize: 20,
                             fontWeight: FontWeight.bold
                           ),
                         )),
                     Stack(
                       alignment: AlignmentDirectional.bottomStart,
                       children: [
                         Opacity(
                             opacity: 0.8,
                             child: Image(image: AssetImage('assets/images/writting.png'))),
                         Positioned(
                           bottom: 30,
                           right: 20,
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text('معرض الرياض لألعاب الاطفال',style: TextStyle(
                                 fontSize: 20,
                                 color: Colors.white
                               ),),
                               Text('1/11/2022',style: TextStyle(
                                 fontSize: 16,
                                 color: gray
                               ),)
                             ],
                           ),
                         )
                       ],
                     )
                    ],
                  ),
                ),
                Positioned(
                  top: 200.h,
                  height: 112,
                  left: 0,
                  right: 0,
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                    buildListItem(context, images[index], titles[index]),
                    separatorBuilder: (context, index) => SizedBox(
                      width: 10.w,
                    ),
                    itemCount: 4,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
