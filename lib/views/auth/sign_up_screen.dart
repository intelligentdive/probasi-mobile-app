import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:probashi/res/colors/ColorHelper.dart';
import 'package:probashi/res/helper/ButtonHelper.dart';
import 'package:probashi/res/images/ImageHelper.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => SignupScreenState();
}

class SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       body: Stack(
         children: [
           Positioned(
             height: Get.height,
             top: -20,
             left: 0,
             right: 0,
             child: Image.asset(ImageHelper().background_signup,fit: BoxFit.cover),
           ),
           Positioned(
               top: 0,
               left: 0,
               right: 0,
               bottom: 0,
               child: Container(
             padding: EdgeInsets.only(left: 15,right: 15,top: Get.width/2.9),
             child: ListView(children: [
               RichText(text: TextSpan(
                   text: "Sign".tr,
                   style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),
                   children: [
                     TextSpan(text: " Up".tr,style: TextStyle(color: ColorHelper().sign_up_page_text_color,fontSize: 30,fontWeight: FontWeight.bold))
                   ]
               )),
               SizedBox(height: 5,),
               Text("account_create_option_title".tr,style: TextStyle(color: ColorHelper().landing_screen_desc_color,fontSize: 14),),
               Row(
                 children: [
                   Expanded(
                     child: Row(
                       children: [
                         Radio(value: 0, onChanged: (int? value) {  }, groupValue: 0,),
                         Text("email_sign_up".tr)
                       ],
                     ),
                   ),
                   Expanded(
                     child: Row(
                       children: [
                         Radio(value: 1, onChanged: (int? value) {  }, groupValue: 0,),
                         Text("phone_sign_up".tr)
                       ],
                     ),
                   )
                 ],
               ),
               TextField(
                 decoration: InputDecoration(
                   suffixIcon: Image.asset(ImageHelper().user_icon_png,scale: 3.0,),
                   hintText: "full_name".tr,
                   enabledBorder: UnderlineInputBorder(
                     borderSide: BorderSide(color:ColorHelper().landing_screen_button_color),
                   ),
                 ),
               ),
               SizedBox(height: 5,),
               TextField(
                 decoration: InputDecoration(
                   suffixIcon: Icon(Icons.email,color: Color(0xff055C78),),
                   hintText: "email".tr,
                   enabledBorder: UnderlineInputBorder(
                     borderSide: BorderSide(color:ColorHelper().landing_screen_button_color),
                   ),
                 ),
               ),
               SizedBox(height: 5,),
               TextField(
                 decoration: InputDecoration(
                   suffixIcon: Icon(Icons.lock,color: Color(0xff055C78),),
                   hintText: "password".tr,
                   enabledBorder: UnderlineInputBorder(
                     borderSide: BorderSide(color:ColorHelper().landing_screen_button_color),
                   ),
                 ),
               ),
               SizedBox(height: 5,),
               TextField(
                 decoration: InputDecoration(
                   suffixIcon: Icon(Icons.lock,color: Color(0xff055C78),),
                   hintText: "confirm_password".tr,
                   enabledBorder: UnderlineInputBorder(
                     borderSide: BorderSide(color:ColorHelper().landing_screen_button_color),
                   ),
                 ),
               ),
               SizedBox(height: 15,),
               Row(
                 children: [
                   Expanded(child: Text("promo_code".tr,style: TextStyle(fontSize: 17,color: ColorHelper().promo_code_text_color),)),
                   Expanded(
                     child: Card(
                       child: Container(
                         height: 40,
                         decoration: BoxDecoration(
                             border: Border.all(color: Color(0xffD2D2D2)),
                             borderRadius: BorderRadius.all(Radius.circular(3))
                         ),
                         child: TextField(
                           decoration: InputDecoration(
                               border:InputBorder.none
                           ),
                         ),
                       ),
                     ),
                   )
                 ],
               ),
               SizedBox(height: 15,),
               Container(
                 margin: EdgeInsets.only(left: 40,right: 40),
                 child: ButtonHelper().RoundedButton("sign_up"),
               ),
               SizedBox(height: 15,),
               Row(
                 children: [
                   Expanded(child: Divider(),flex: 3,),
                   Expanded(child: Center(child: Text("OR".tr)),flex: 1,),
                   Expanded(child: Divider(),flex: 3,),
                 ],
               ),
               SizedBox(height: 10,),
               Center(
                 child: Text("login_with_others".tr,style: TextStyle(color: ColorHelper().login_with_other_text_color),),
               ),
               SizedBox(height: 5,),
               Row(
                 children: [
                   Expanded(child: ButtonHelper().SocialButton(ImageHelper().fb_icon_png, "Facebook",Color(0xff3A559F))),
                   Expanded(child: ButtonHelper().SocialButton(ImageHelper().linkdin_icon_png, "Linkdin",Color(0xff0274B3))),
                   Expanded(child: ButtonHelper().SocialButton(ImageHelper().google_icon_png, "Google",Color(0xffFF0000))),
                 ],
               ),
               SizedBox(height: 5,),
               Center(
                 child: RichText(text: TextSpan(
                   text: "have_another_account".tr,
                   style: TextStyle(
                     color: ColorHelper().landing_screen_desc_color
                   ),
                   children: [
                     TextSpan(
                         text: " "
                     ),
                     TextSpan(
                       text: "sign_in".tr.toUpperCase(),
                       style: TextStyle(
                         color: ColorHelper().landing_screen_button_color
                       )
                     )
                   ]
                 )),
               ),
               SizedBox(height: 100,),
             ],),
           )),

           // Positioned(
           //   left: 0,
           //   right: 0,
           //   bottom: 0,
           //   child: Image.asset(ImageHelper().landing_page_bottom_png),
           // )
         ],
       )
      ));
  }
}
