
import 'package:flutter/material.dart';
import '../../../../Utils/color/color.dart';
import 'modules/expand_list.dart';

class CommonQuestionScreen extends StatelessWidget {
  const CommonQuestionScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: purple2,
          title: const Text('الاسئلة الشائعة'),
          titleSpacing: 0,
          elevation: 0,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios)),
        ),
        body: ExpandList(),
      ),
    );
  }
}
