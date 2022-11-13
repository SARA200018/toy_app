import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../Utils/color/color.dart';
import '../home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _navigatetohome();
  }
  _navigatetohome()async{
    await Future.delayed(const Duration(seconds: 5),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(
                    image: AssetImage('assets/images/layer.png'),
                fit: BoxFit.cover,
                ),
                const SizedBox(height: 20,),
                Text('معرض الرياض',style: TextStyle(
                  fontSize: 28,
                  color: purple,
                  fontWeight: FontWeight.bold,
                ),),
                 Text('لألعاب الأطفال',style: TextStyle(
                  fontSize: 20,
                  color: offwhite
                ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
