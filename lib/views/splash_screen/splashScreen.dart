import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:probashi/res/images/ImageHelper.dart';
import 'package:probashi/res/pages/PageUrl.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    CheckUserLoginInfo();
    super.initState();
  }


  Future CheckUserLoginInfo()async{
    Timer(Duration(seconds: 5), () {
      Get.offAllNamed(PageUrl().landing_screen);
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Container(
           child: Center(
             child: Image.asset(ImageHelper().logo_png,height: 200,width: 200,),
           ),
          ),
        ],
      ),
    );
  }
}
