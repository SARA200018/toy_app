
import 'package:flutter/material.dart';
import 'package:toyaapp/App/components/components.dart';
import 'package:toyaapp/modules/drawer/modules/Blog/modules/blog_details_screen.dart';
import 'package:toyaapp/modules/drawer/modules/Blog/widgets/build_Blog_Item.dart';
import '../../../../App/color/color.dart';

class BlogScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: purple2,
          title: Text('المدونة'),
          titleSpacing: 0,
          elevation: 0,
          leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
              child: Icon(Icons.arrow_back_ios)),
        ),
        body: ListView.separated(
          scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context,index)=>InkWell(
                onTap: (){
                  NavigatorTo(context, DetailsBlogScreen());
                },
                child: buildBlogItem()
            ),
            separatorBuilder:  (context,index)=>SizedBox(height: 1,),
            itemCount: 8
        )
      ),
    );
  }
}
