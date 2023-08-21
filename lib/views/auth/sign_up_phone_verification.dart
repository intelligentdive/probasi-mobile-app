import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:probashi/res/colors/ColorHelper.dart';
import 'package:probashi/res/helper/ButtonHelper.dart';
import 'package:probashi/res/images/ImageHelper.dart';

class SignUpPhoneVerification extends StatefulWidget {
  const SignUpPhoneVerification({Key? key}) : super(key: key);

  @override
  State<SignUpPhoneVerification> createState() => SignUpPhoneVerificationState();
}

class SignUpPhoneVerificationState extends State<SignUpPhoneVerification> {
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
              child: Image.asset(ImageHelper().sign_up_otp_background,fit: BoxFit.cover),
            ),

            Positioned(
              left: 20,
              top:30,
              child: InkWell(
                onTap: (){
                  Get.back();
                },
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.arrow_back,color: ColorHelper().landing_screen_button_color,),
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.only(left: 15,right: 15,top: Get.width/1.9),
              child: ListView(
                children: [
                  RichText(text:TextSpan(
                      text:  "phone".tr,
                      style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(text: " "),
                        TextSpan(text: "verification".tr, style: TextStyle(color:ColorHelper().landing_screen_button_color,fontSize: 30,fontWeight: FontWeight.bold))
                      ]
                  ),),
                  SizedBox(height: 10,),
                  Text("A code has been sent to +8801796586154",style: TextStyle(fontSize: 15,color: ColorHelper().verification_page_text_color),),
                  SizedBox(height: 10,),
                  Center(
                    child: RichText(text:TextSpan(
                        text:  "please_enter_the".tr,
                        style: TextStyle(color:ColorHelper().verification_page_text_color,fontSize: 15),
                        children: [
                          TextSpan(text: " "),
                          TextSpan(text: "4-digit".tr, style: TextStyle(color:ColorHelper().landing_screen_button_color,fontSize: 15,)),
                          TextSpan(text: " "),
                          TextSpan(text: "code_here".tr, style: TextStyle(color:ColorHelper().verification_page_text_color,fontSize: 15))
                        ]
                    ),),
                  ),
                  SizedBox(height: 10,),
                  Center(child: Text("04:00",style: TextStyle(fontSize: 15,color: ColorHelper().sign_up_page_text_color,fontWeight: FontWeight.bold),)),
                  SizedBox(height: 10,),
                  Pinput(),
                  SizedBox(height: 20,),
                  Center(
                    child: RichText(text:TextSpan(
                        text:  "did_not_receive_the_code".tr,
                        style: TextStyle(color:ColorHelper().verification_page_text_color,fontSize: 15),
                        children: [
                          TextSpan(text: " "),
                          TextSpan(text: "resend_code".tr, style: TextStyle(color:ColorHelper().landing_screen_button_color,fontSize: 15,)),
                        ]
                    ),),
                  ),
                  SizedBox(height: 20,),
                  ButtonHelper().RoundedButton("verify_phone_number", ColorHelper().verification_page_btn_color,false),
                  SizedBox(height: 100,)
                ],
              ),
            )



          ],
        ),
      ),
    );
  }
}
