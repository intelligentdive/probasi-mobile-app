import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:probashi/res/colors/ColorHelper.dart';

class ButtonHelper{


  Widget RoundedButton(text,color,is_bold){
    return Container(
      height: 45,
      width: 227,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(30))
      ),
      child: Center(child: Text("${text}".tr,style: TextStyle(fontSize: 18,fontWeight: is_bold==true?FontWeight.bold:FontWeight.normal,color: Colors.white),)),
    );
  }
  Widget RoundedCornerButton(text,color,is_bold){
    return Container(
      height: 55,
      width: 227,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Center(child: Text("${text}".tr,style: TextStyle(fontSize: 18,fontWeight: is_bold==true?FontWeight.bold:FontWeight.normal,color: Colors.white),)),
    );
  }
  Widget SocialButton(icon,text,color){
    return Container(
      height: 35,
      width: 220,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(30))
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Image.asset(icon),flex: 1,),
          Expanded(child: Center(child: Text("${text}".tr,style: TextStyle(fontSize: 12,color: Colors.white),)),flex: 4,),
        ],
      ),
    );
  }

}