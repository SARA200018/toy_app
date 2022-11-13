
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

import '../color/color.dart';

void NavigatorTo(context, widget) => Navigator.push(
  context,
  MaterialPageRoute(
      builder: (context) => widget),
);

void NavigateAnfFinish(context, widget) => Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(
      builder: (context) => widget
  ),
      (rout) => false,
);


Widget D_TextFromField({
  required TextEditingController controller,
  required String label,
  IconData? prefixIcon,
  required TextInputType keyboardType,
  String? Function(String?)? validator,
  Function()? onTap,
  String? Function(String?)? onChange,
  String? Function(String?)? onSubmitted,
  TextStyle? labelStyle,
  TextStyle? styleOutDecoration,
  String? hintText,
  double hintStyleFS = 15,
  double borderSideWidth = 1,
  double borderRadiusCircular = 5,
  Color? prefixIconColor,
  Widget? suffixIcon,
  Function()? suffixPressed,
  bool isobscureText = false,
  String? InitialValue
}) =>
    Container(
      height: 60,
      child: TextFormField(
        initialValue: InitialValue,
        validator: validator,
        controller: controller,
        onTap: onTap,
        onChanged: onChange,
        onFieldSubmitted: onSubmitted,
        keyboardType: keyboardType,
        style: styleOutDecoration,
        obscureText: isobscureText,

        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: hintStyleFS,
            color: Colors.grey,
          ),
          prefixIcon: Icon(
            prefixIcon,
            color: purple,
          ),
          label: Text(label,style: TextStyle(
            color: Colors.black,
            fontSize: 18
          ),),
          labelStyle: labelStyle,
          border: OutlineInputBorder(
            borderSide: BorderSide(
                width: borderSideWidth, color: gray1),
            borderRadius: BorderRadius.all(
                Radius.circular(borderRadiusCircular)),
          ),
          suffixIcon:suffixIcon
        ),
      ),
    );

Widget TextFormFailed({
  label,
  double borderSideWidth = 3,
  double borderRadiusCircular = 8,
  int maxLine = 1,
}){
  return TextFormField(
    maxLines: maxLine,
      decoration: InputDecoration(
        label: Text(

          label,style: TextStyle(
            color: Colors.black,
            fontSize: 18
        ),),
        border: OutlineInputBorder(
          borderSide: BorderSide(width: borderSideWidth, color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(borderRadiusCircular)),
        ),
      ),
  );
}
Widget D_MaterialButton(
    {
      required Function() onPressed,
      double width = 200,
      bool isUpperCase = true,
      String text ='',
      Color textColor = Colors.white,
      double paddingSpace = 16.0,
      double raduis = 8.0,
      String? image
    }) =>
    Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      width: width,
      height: 60.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(raduis)),
      ),
      child: MaterialButton(
        color: HexColor('#911D74'),
        onPressed: onPressed,
        height: 40.h,
        child: Text(
              isUpperCase? text.toUpperCase() : text,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w400,
                fontSize: 20
              ),
            ),
        ),
      );


Widget D_MaterialButtonwithIcon(
    {
      required Function() onPressed,
      double width = 200,
      bool isUpperCase = true,
      String text ='',
      Color textColor = Colors.white,
      double paddingSpace = 16.0,
      double raduis = 8.0,
      String? image,
      IconData? icon,
    }) =>
    Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      width: width,
      height: 60.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(raduis)),
      ),
      child: MaterialButton(
        color: HexColor('#911D74'),
        onPressed: onPressed,
        height: 40.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,color: Colors.white,),
            SizedBox(width: 5.w,),
            Text(
              isUpperCase? text.toUpperCase() : text,
              style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 16
              ),
            ),

          ],
        ),
      ),
    );


Widget D_TextButton ({
  required Function() onPressed,
  required String text,
  double? fontSize,
  FontWeight? fontWeight,
  Color? color,
}) => TextButton(
  onPressed: onPressed,
  child: Text(
    text,
    style: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,

    ),
  ),
);


Widget MyDivided ({required Color color, double? withOpacity}) => Container(
  width: double.infinity,
  height: 1,
  color: color,
);

void printFullText(String text){

  final pattern = RegExp('.{1,800}');
  pattern.allMatches(text).forEach((match) => print(match.group(0)));
}


