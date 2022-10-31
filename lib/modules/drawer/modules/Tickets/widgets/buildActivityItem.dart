import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildActivityItem() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Material(
      elevation: 2,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      borderRadius: BorderRadius.circular(16.0),
      child: Stack(
        children: [
          // Positioned(
          //     left: 0,
          //     top: 0,
          //     child: CircleAvatar(backgroundColor: Colors.purple,radius: 30,)),
          SizedBox(
            height: 300.h,
            width: 200.w,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('انطلاق الفعاليات',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),),
                  Column(
                    children: const[
                      Text(
                        '1.افتتاح الاجنحه وفتح الابواب امام الزوار',
                        maxLines: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '2.افتتاح الاجنحه وفتح الابواب امام الزوار',
                        maxLines: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '3.افتتاح الاجنحه وفتح الابواب امام الزوار',
                        maxLines: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '4.افتتاح الاجنحه وفتح الابواب امام الزوار',
                        maxLines: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '5.افتتاح الاجنحه وفتح الابواب امام الزوار',
                        maxLines: 2,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}