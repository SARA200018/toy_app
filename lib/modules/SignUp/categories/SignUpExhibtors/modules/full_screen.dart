import 'package:flutter/material.dart';
import 'package:toyaapp/App/components/components.dart';

class FullScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    var height = size.height;
    var width = size.width;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          body: SafeArea(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.black.withOpacity(0.4),
                        child: Icon(Icons.close,color: Colors.white,),
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/images/mapZoom.png',
                    fit: BoxFit.cover,
                    height: height,
                    width: width,
                  ),
                ],
              ))),
    );
  }
}
