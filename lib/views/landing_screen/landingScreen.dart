import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:probashi/res/colors/ColorHelper.dart';
import 'package:probashi/res/images/ImageHelper.dart';
import 'package:probashi/res/pages/PageUrl.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => LandingScreenState();
}

class LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
              top: -140,
              left: 0,
              right:-150,
              child: Container(
                height: 370,
                child: Image.asset(ImageHelper().landing_page_top_png,),
              ),
            ),
            Positioned(
              top: 20,
              right: 20,
              child: InkWell(
                onTap: (){

                },
                child: Container(
                    width: 65,
                    height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(3))
                  ),
                  child: Center(child: Text("English")),
                ),
              ),
            ),
            
            Positioned(
              top: MediaQuery.of(context).size.width/2,
              left: 0,
              bottom: 0,
              right: 0,
              child: Column(
                children: [
                  Center(child: Image.asset(ImageHelper().landing_page_logo_png,height: 110,)),
                  Image.asset(ImageHelper().title_logo_bn_png,width: 120,),
                  Text('landing_screen_welcome'.tr,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
                  Padding(
                    padding: EdgeInsets.only(left: 35,right: 35),
                      child: Text('landing_screen_desc'.tr,style: TextStyle(fontSize: 17,color: ColorHelper().landing_screen_desc_color),textAlign: TextAlign.center,)
                  ),
                  SizedBox(height: 40,),
                  Text('get_started'.tr,style: TextStyle(fontSize: 18,color: ColorHelper().landing_screen_get_started_color),),
                  InkWell(
                    onTap: (){
                      Get.toNamed(PageUrl().signupScreen);
                    },
                    child: Container(
                      height: 45,
                      width: 227,
                      decoration: BoxDecoration(
                        color: ColorHelper().landing_screen_button_color,
                        borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: Center(child: Text("sign_up".tr,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)),
                    ),
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    onTap: (){
                      Get.toNamed(PageUrl().signinScreen);
                    },
                    child: Container(
                      height: 45,
                      width: 227,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        border: Border.all(color: ColorHelper().landing_screen_button_color)
                      ),
                      child: Center(child: Text("sign_in".tr,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: ColorHelper().landing_screen_button_color),)),
                    ),
                  )

                ],
              ),
            ),
            
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Image.asset(ImageHelper().landing_page_bottom_png),
            )
            
          ],
        ),
      ),
    );
  }
}
