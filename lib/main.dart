import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:probashi/res/lang/Languages.dart';
import 'package:probashi/views/splash_screen/splashScreen.dart';
void main(){
  runApp(GetMaterialApp(
    locale: Locale("en","US"),
    fallbackLocale:  Locale("en","US"),
    translations: Languages(),
    home: SplashScreen(),
  ));
}
