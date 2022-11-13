import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../color/color.dart';

class HomeScreen1 extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen1> {
  int _selection = 0;

 void selectTime(int? timeSelected) {
    setState(() {
      _selection = timeSelected!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: double.infinity,
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                    itemBuilder: (context,index)=>InkWell(
                      onTap: () {
                        setState(() {
                          _selection = index;
                        });
                      },
                      child: Column(
                        children: <Widget>[
                          Container(
                              width: 336,
                              height: 67,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: gray2,
                                  border: Border.all(
                                      color: _selection == index ? Colors.purple : Colors.white
                                  )
                              ),
                              child:Row(
                                children: <Widget>[
                                  Radio(
                                    focusColor: Colors.purple,
                                    groupValue: _selection,
                                    onChanged: selectTime,
                                    value: index,
                                  ),
                                  Text(
                                    "المكان",
                                    style: TextStyle(color: gray,fontSize: 14),
                                  ),
                                  SizedBox(width: 5.w,),
                                  Text(
                                    "1",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(width: 70,),
                                  Container(color: gray3,height: 30.h,width: 1.w,),
                                  SizedBox(width: 20,),
                                  Text(
                                    "المساحة",
                                    style: TextStyle(color: gray,fontSize: 14),
                                  ),
                                  SizedBox(width: 5.w,),
                                  Text(
                                    "1*9",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              )
                          ),
                        ],
                      ),
                    ),
                    separatorBuilder: (context,index)=>SizedBox(height: 20,),
                    itemCount: 5
                ),
              ),
            ),
          ],
        ),
      );
  } }