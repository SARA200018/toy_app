import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toyaapp/modules/drawer/modules/AboutUs/about_us_screen.dart';
import 'package:toyaapp/modules/drawer/modules/Blog/blog_screen.dart';
import 'package:toyaapp/modules/drawer/modules/CommonQuestion/common_question_screen.dart';
import 'package:toyaapp/modules/drawer/modules/Profile/profile_screen.dart';
import 'package:toyaapp/modules/drawer/modules/TravelHotel/travel_hotel.dart';
import 'package:toyaapp/modules/drawer/modules/exhibitors/exhibitors_screen.dart';
import 'package:toyaapp/modules/home/home_screen.dart';
import '../../modules/drawer/modules/CallUs/callus_screen.dart';
import '../../modules/drawer/modules/Tickets/ticket_screen.dart';
import '../../modules/drawer/modules/shepherds/shepherds.dart';
import '../../modules/signin/sign_in_screen.dart';
import '../color/color.dart';
import '../components/components.dart';
import '../images/images.dart';

class NavigationDrawer extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
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
                          fontWeight: FontWeight.w200)),
                ],
              ),
              GestureDetector(
                  onTap: () {
                    NavigatorTo(context, SignInScreen());
                  },
                  child: buildLoginField()),
              Container(
                color: purple2,
                padding: padding,
                child: Column(
                  children: [
                    const SizedBox(height: 5),
                    buildMenuItem(
                      text: 'الرئيسية',
                      icon: Images.homeIcon,
                      onClicked: () => selectedItem(context, 0),
                    ),
                    buildMenuItem(
                      text: 'العارضين',
                      icon: Images.exhibtorsIcon,
                      onClicked: () => selectedItem(context, 1),
                    ),
                    buildMenuItem(
                      text: 'الرعاة',
                      icon: Images.shapIcon,
                      onClicked: () => selectedItem(context, 2),
                    ),
                    buildMenuItem(
                      text: 'التذاكر',
                      icon: Images.cartIcon,
                      onClicked: () => selectedItem(context, 3),
                    ),
                    buildMenuItem(
                      text: 'السفر والفنادق',
                      icon: Images.planIcon,
                      onClicked: () => selectedItem(context, 4),
                    ),
                    buildMenuItem(
                      text: 'المدونة',
                      icon: Images.blogIcon,
                      onClicked: () => selectedItem(context, 5),
                    ),
                    buildMenuItem(
                      text: 'من نحن',
                      icon: Images.aboutIcon,
                      onClicked: () => selectedItem(context, 6),
                    ),
                    buildMenuItem(
                      text: 'الاسئلة الشائعة',
                      icon: Images.askIcon,
                      onClicked: () => selectedItem(context, 7),
                    ),
                    buildMenuItem(
                      text: 'English',
                      icon: Images.enIcon,
                      onClicked: () => selectedItem(context, 8),
                    ),
                    buildMenuItem(
                      text: 'اتصل بنا',
                      icon: Images.callIcon,
                      onClicked: () => selectedItem(context, 9),
                    ),
                    buildMenuItem(
                      text: 'الملف الشخصي',
                      icon: Images.exhibtorsIcon,
                      onClicked: () => selectedItem(context, 10),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: buildFooter(),
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

  Widget buildLoginField() {
    return Container(
        width: double.infinity,
        height: 60.h,
        color: purple2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.person,
              color: Colors.white,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'تسجيل الدخول',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ],
        ));
  }

  Widget buildMenuItem({
    required String text,
    required String icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: SvgPicture.asset(icon,color: Colors.white,height: 16,width: 16,),
      title: Text(text, style: TextStyle(color: color, fontSize: 18)),
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
          builder: (context) => CallUsScreen(),
        ));
        break;
      case 10:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ProfileScreen(),
        ));
        break;
    }
  }

  Widget buildFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Colors.white),
          ),
          child: IconButton(
              onPressed: () {},
              icon: Image(
                color: Colors.white,
                image: AssetImage('assets/images/twitter.png'),
              )),
        ),
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Colors.white),
          ),
          child: IconButton(
              onPressed: () {},
              icon: Image(
                image: AssetImage('assets/images/linkedin.png'),
                  color: Colors.white
              )),
        ),
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Colors.white),
          ),
          child: IconButton(
              onPressed: () {},
              icon: Image(
                image: AssetImage('assets/images/Group 18.png'),
              )),
        ),
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Colors.white),
          ),
          child: IconButton(
              onPressed: () {},
              icon: Image(
                image: AssetImage('assets/images/linkedin.png'),
                color: Colors.white,
              )),
        ),
      ],
    );
  }
}
