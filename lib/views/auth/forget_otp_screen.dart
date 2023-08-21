import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:probashi/res/colors/ColorHelper.dart';
import 'package:probashi/res/helper/ButtonHelper.dart';
import 'package:probashi/res/images/ImageHelper.dart';
class ForgetOtpScreen extends StatefulWidget {
  const ForgetOtpScreen({Key? key}) : super(key: key);

  @override
  State<ForgetOtpScreen> createState() => _ForgetOtpScreenState();
}

class _ForgetOtpScreenState extends State<ForgetOtpScreen> {


  var _pageController=PageController(initialPage: 0);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              height: Get.height,
              top: -30,
              left: 0,
              right: 0,
              child: Image.asset(ImageHelper().forget_otp_background,fit: BoxFit.cover),
            ),

            Positioned(
              left: -20,
              right: -20,
              top:30,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                    onTap: (){
                      Get.back();
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.arrow_back,color: ColorHelper().landing_screen_button_color,),
                    ),
                  )),
                  Expanded(
                      child: InkWell(
                        onTap: (){

                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Padding(
                              padding: EdgeInsets.all(5),
                              child: Image.asset(ImageHelper().user_avatar_png)),

                        ),
                  )),
                  Expanded(
                      child: InkWell(
                        onTap: (){

                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                              child: Image.asset(ImageHelper().message_icon_png)
                          ),
                        ),
                  )),
                ],
              ),
            ),

            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 0,
              child: Container(
                margin: EdgeInsets.only(left: 20,right: 20,top: Get.height/4),
                child:  PageView(
                  controller: _pageController,
                  children: [
                    Container(
                      child: ListView(
                        shrinkWrap: true,
                        children: [

                          Center(child: Text("forget_password_otp_page".tr,style: TextStyle(fontSize: 25,color: ColorHelper().verification_page_btn_color,fontWeight: FontWeight.bold),)),
                          SizedBox(height: 20,),
                          Center(child: Padding(
                              padding: EdgeInsets.only(left: 20,right: 20),
                              child: Text("enter_email_for_recovery".tr,style: TextStyle(fontSize: 16,color: ColorHelper().verification_page_text_color,),textAlign: TextAlign.center,)
                          )),
                          SizedBox(height: 30,),
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              color: ColorHelper().input_field_color,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "enter_your_email".tr,
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(left: 10,top: 9)
                              ),
                            ),
                          ),
                          SizedBox(height: 40,),
                          InkWell(
                            onTap: (){
                              _pageController.jumpToPage(1);
                            },
                              child: ButtonHelper().RoundedCornerButton("reset_password", ColorHelper().verification_page_btn_color, true)
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: ListView(
                        shrinkWrap: true,
                        children: [

                          Center(child: Text("verify_your_email".tr,style: TextStyle(fontSize: 25,color: ColorHelper().verification_page_btn_color,fontWeight: FontWeight.bold),)),
                          SizedBox(height: 20,),
                          Center(child: Padding(
                              padding: EdgeInsets.only(left: 20,right: 20),
                              child: Text("please_check_email_code".tr,style: TextStyle(fontSize: 16,color: ColorHelper().verification_page_text_color,),textAlign: TextAlign.center,)
                          )),
                          SizedBox(height: 30,),
                          Pinput(),
                          SizedBox(height: 20,),
                          Center(child: Text("resend_code".tr,style: TextStyle(color: ColorHelper().resend_forget_otp_text_color),)),
                          SizedBox(height: 20,),
                          InkWell(
                            onTap: (){
                              _pageController.jumpToPage(2);
                            },
                            child:  ButtonHelper().RoundedCornerButton("send", ColorHelper().verification_page_btn_color, true),
                          )





                        ],
                      ),
                    ),
                    Container(
                      child: ListView(
                        shrinkWrap: true,
                        children: [

                          Text("new".tr,style: TextStyle(fontSize: 25,color: ColorHelper().verification_page_btn_color,fontWeight: FontWeight.bold),),
                          SizedBox(height: 20,),
                          Padding(
                              padding: EdgeInsets.only(right: 40),
                              child: Text("reset_your_pass_and_recover".tr,style: TextStyle(fontSize: 16,color: ColorHelper().verification_page_text_color,),textAlign: TextAlign.left,)),
                          SizedBox(height: 30,),
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              color: ColorHelper().input_field_color,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                suffixIcon:Padding(padding: EdgeInsets.only(top: 16),child: FaIcon(FontAwesomeIcons.eye)),
                                  hintText: "new_password".tr,
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(left: 10,top: 20),
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              color: ColorHelper().input_field_color,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                suffixIcon:Padding(padding: EdgeInsets.only(top: 16),child: FaIcon(FontAwesomeIcons.eyeSlash)),
                                hintText: "retype_password".tr,
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(left: 10,top: 20),
                              ),
                            ),
                          ),
                          SizedBox(height: 40,),
                          ButtonHelper().RoundedCornerButton("confirm", ColorHelper().verification_page_btn_color, true),
                          SizedBox(height: 80,),


                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )



          ],
        ),
      ),
    );
  }
}
