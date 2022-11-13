
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:toyaapp/modules/SignUp/sign_up_screen.dart';
import '../../Utils/color/color.dart';
import '../../Utils/components/components.dart';

class SignInScreen extends StatelessWidget {

  var userName = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SafeArea(
            child:  Column(
                children: [
                Container(
                  width: double.infinity,
                  height: 250.h,
                  color: purple1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(onPressed: (){
                        Navigator.pop(context);
                      }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 25,)),
                      Center(
                        child: Column(
                          children: [
                            SizedBox(
                                height: 75.h,
                                width: 100.w,
                                child: const Image(
                                  image: AssetImage('assets/images/layer.png'),
                                  fit: BoxFit.contain,
                                )),
                            const Text(
                              'معرض الرياض',
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                             Text('لألعاب الأطفال',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: gray3,
                                    )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.h,),
                      Text('تسجيل دخول',style: TextStyle(
                        color: purple1,
                        fontSize: 18
                      ),),
                      SizedBox(height: 10.h,),
                      D_TextFromField(
                          controller: userName,
                          label: 'البريد الالكتروني',
                          prefixIcon: Icons.person,
                          prefixIconColor: Colors.purple,
                          keyboardType: TextInputType.emailAddress
                      ),
                      SizedBox(height: 10.h,),
                      D_TextFromField(
                          controller: password,
                          label: 'كلمة المرور',
                          prefixIcon: Icons.lock,
                          prefixIconColor: Colors.purple,
                          keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Checkbox(
                              activeColor: purple,
                              focusColor: HexColor('#1BBAA2'),
                              value: true, onChanged:(value){} ),
                          Text('تذكرني',style: TextStyle(
                            fontSize: 20
                          ),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Center(
                        child: D_MaterialButton(
                            onPressed: (){},
                            text: 'دخول'
                        ),
                      ),
                      SizedBox(height: 10,),
                      Center(
                        child: TextButton(
                            onPressed: (){
                              showModalBottomSheet(
                                  isScrollControlled: true,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)
                                  ),
                                  context: context,
                                  builder: (context)=>buildSheet(context));
                            },
                            child:Text('نسيت كلمة المرور؟',style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),)
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text('ليس لديك حساب؟',style: TextStyle(
                            fontSize: 16,
                            color: Colors.black
                        )),
                        TextButton(
                              onPressed: (){
                                NavigatorTo(context, SignUpScreen());
                              },
                              child:Text('انشاء حساب',style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),)
                          ),
                      ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget buildSheet(context){
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding:  EdgeInsets.only(
            top: 10,
            right: 10,
            left: 10,
            bottom:MediaQuery.of(context).viewInsets.bottom
        ),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: 250.h,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, icon: Icon(Icons.close)),
                  ],
                ),
                Text('نسيت كلمة المرور؟',style: TextStyle(
                    fontSize: 25
                ),
                ),
                SizedBox(height: 20,),
                D_TextFromField(
                    controller: userName,
                    label: 'البريد الالكتروني',
                    keyboardType: TextInputType.emailAddress,
                    prefixIcon: Icons.email
                ),
                SizedBox(height: 20,),
                D_MaterialButton(
                    text: 'ارسال',
                    onPressed: (){

                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
