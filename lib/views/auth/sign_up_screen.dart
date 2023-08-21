
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:probashi/res/colors/ColorHelper.dart';
import 'package:probashi/res/helper/ButtonHelper.dart';
import 'package:probashi/res/images/ImageHelper.dart';
import 'package:probashi/res/pages/PageUrl.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => SignupScreenState();
}

enum reg_type{email,phone}

class SignupScreenState extends State<SignupScreen> {
  var selected_reg_type=reg_type.email.obs;
  var selected_country="Select".obs;
  var selected_country_code="".obs;



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
           Container(
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

               Obx(() =>Row(
                 children: [

                   Expanded(
                     child: Row(
                       children: [
                         Radio(
                             value:reg_type.email,
                             groupValue: selected_reg_type.value,
                             onChanged: (reg_type? value) {
                               selected_reg_type.value=value!;
                         },
                         ),
                         Text("email_sign_up".tr)
                       ],
                     ),
                   ),
                   Expanded(
                     child: Row(
                       children: [
                         Radio(
                           value:reg_type.phone,
                           groupValue: selected_reg_type.value,
                           onChanged: (reg_type? value) {
                             selected_reg_type.value=value!;
                           },
                         ),
                         Text("phone_sign_up".tr)
                       ],
                     ),
                   )
                 ],
               )),
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
               Obx(() => selected_reg_type==reg_type.email?
               Column(children: [
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
                 )
               ],):Column(
                 children: [
                   Row(
                     children: [
                       Expanded(child: TextField(
                         onTap: (){
                           showCountryPicker(
                               context: context,
                               showPhoneCode: true,
                               onSelect: (v){
                                 selected_country.value=v.name;
                                 selected_country_code.value=v.phoneCode;
                               }
                           );

                         },
                         decoration: InputDecoration(
                           suffixIcon:Icon(Icons.arrow_drop_down),
                           hintText: selected_country.value,
                           enabledBorder: UnderlineInputBorder(
                             borderSide: BorderSide(color:ColorHelper().landing_screen_button_color),
                           ),
                         ),
                       ),flex: 2,),
                       SizedBox(width: 30,),
                       Expanded(child: TextField(
                         decoration: InputDecoration(
                           prefix: Text("+${selected_country_code.value}"),
                           suffixIcon: Icon(Icons.phone_iphone_outlined,color: ColorHelper().sign_up_page_text_color,),
                           enabledBorder: UnderlineInputBorder(
                             borderSide: BorderSide(color:ColorHelper().landing_screen_button_color),
                           ),
                         ),
                       ),flex: 5,),
                     ],
                   )
                 ],
               )),
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
                             borderRadius: BorderRadius.all(Radius.circular(3)),
                         ),
                         child: TextField(
                           decoration: InputDecoration(
                               border:InputBorder.none,
                               contentPadding: EdgeInsets.only(left: 10,bottom: 7),

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
                 child: InkWell(
                     onTap: (){
                       Get.toNamed(PageUrl().signup_phone_verification);
                     },
                     child: ButtonHelper().RoundedButton("sign_up",ColorHelper().landing_screen_button_color,true)),
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
           )


         ],
       )
      ));
  }
}
