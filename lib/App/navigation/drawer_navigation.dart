import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toyaapp/App/color/color.dart';
import 'package:toyaapp/App/components/components.dart';
import 'package:toyaapp/modules/drawer/modules/AboutUs/about_us_screen.dart';
import 'package:toyaapp/modules/drawer/modules/Blog/blog_screen.dart';
import 'package:toyaapp/modules/drawer/modules/CommonQuestion/common_question_screen.dart';
import 'package:toyaapp/modules/drawer/modules/Profile/profile_screen.dart';
import 'package:toyaapp/modules/drawer/modules/TravelHotel/travel_hotel.dart';
import 'package:toyaapp/modules/drawer/modules/exhibitors/exhibitors_screen.dart';
import 'package:toyaapp/modules/home/home_screen.dart';
import '../../modules/drawer/modules/Tickets/ticket_screen.dart';
import '../../modules/drawer/modules/shepherds/shepherds.dart';
import '../../modules/signin/sign_in_screen.dart';

class NavigationDrawer extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final name = 'Sarah Abs';
    final email = 'sarah@abs.com';
    final urlImage =
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80';
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Drawer(
        child: Material(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                        height: 60.h,
                        width: 100.w,
                        child: const Image(
                          image: AssetImage('assets/images/layer.png'),
                          fit: BoxFit.cover,
                        )),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Text(
                    'معرض الرياض',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text('لألعاب الأطفال',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.w200
                      )),
                ],
              ),
              GestureDetector(
                  onTap: (){
                    NavigatorTo(context, SignInScreen());
                  },
                  child: buildSearchField()),
              Container(
                color:purple2,
                padding: padding,
                child: Column(
                  children: [
                    const SizedBox(height: 5),
                    buildMenuItem(
                      text: 'الرئيسية',
                      icon: Icons.home,
                      onClicked: () => selectedItem(context, 0),
                    ),
                    buildMenuItem(
                      text: 'العارضين',
                      icon: Icons.card_travel,
                      onClicked: () => selectedItem(context, 1),
                    ),
                    buildMenuItem(
                      text: 'الرعاة',
                      icon: Icons.workspaces_outline,
                      onClicked: () => selectedItem(context, 2),
                    ),
                    buildMenuItem(
                      text: 'التذاكر',
                      icon: Icons.update,
                      onClicked: () => selectedItem(context, 3),
                    ),
                    buildMenuItem(
                      text: 'السفر والفنادق',
                      icon: Icons.account_tree_outlined,
                      onClicked: () => selectedItem(context, 4),
                    ),
                    buildMenuItem(
                      text: 'المدونة',
                      icon: Icons.notifications_outlined,
                      onClicked: () => selectedItem(context, 5),
                    ),
                    buildMenuItem(
                      text: 'من نحن',
                      icon: Icons.notifications_outlined,
                      onClicked: () => selectedItem(context, 6),
                    ),
                    buildMenuItem(
                      text: 'الاسئلة الشائعة',
                      icon: Icons.notifications_outlined,
                      onClicked: () => selectedItem(context, 7),
                    ),
                    buildMenuItem(
                      text: 'English',
                      icon: Icons.notifications_outlined,
                      onClicked: () => selectedItem(context, 8),
                    ),
                    buildMenuItem(
                      text: 'اتصل بنا',
                      icon: Icons.notifications_outlined,
                      onClicked: () => selectedItem(context, 9),
                    ),
                    buildMenuItem(
                      text: 'الملف الشخصي',
                      icon: Icons.notifications_outlined,
                      onClicked: () => selectedItem(context, 9),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
              Spacer(),
              CircleAvatar(
                radius: 24,
                backgroundColor: Color.fromRGBO(30, 60, 168, 1),
                child: Icon(Icons.add_comment_outlined, color: Colors.white),
              )
            ],
          ),
        ),
      );

  Widget buildSearchField() {
   return Container(
     width: double.infinity,
     height: 60.h,
     color: purple2,
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Icon(Icons.person,color: Colors.white,),
             SizedBox(width: 5,),
             Text(
               'تسجيل الدخول',
               style: TextStyle(
                   fontSize: 18,
                   color: Colors.white),),
           ],
         ));
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color,fontSize: 18)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ExhibitorsScreen(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ShepherdsScreen(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => TicketScreen(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => TravelHotel(),
        ));
        break;
        case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => BlogScreen(),
        ));
        break;
      case 6:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AboutUsScreen(),
        ));
        break;
        //common questions
      case 7:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => CommonQuestionScreen(),
        ));
        break;
      case 8:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AboutUsScreen(),
        ));
        break;
      case 9:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ProfileScreen(),
        ));
        break;
    }
  }
}