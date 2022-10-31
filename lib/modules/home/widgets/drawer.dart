import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(
                        height: 30.h,
                        width: 100.w,
                        child: const Image(
                          image: AssetImage('assets/images/layer.png'),
                          fit: BoxFit.cover,
                        )),
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
                Container(
                  height: 20.h,
                  width: double.infinity,
                  color: Colors.purple,
                )
              ],
            ),

          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Welcome'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Profile'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}