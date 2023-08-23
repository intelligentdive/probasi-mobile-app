import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:probashi/res/lang/Languages.dart';
import 'package:probashi/res/pages/PageUrl.dart';
import 'package:probashi/res/pages/PagesRoute.dart';
import 'package:probashi/views/splash_screen/splash_screen.dart';
void main(){
  runApp(GetMaterialApp(
    locale: Locale("en","US"),
    fallbackLocale:  Locale("en","US"),
    translations: Languages(),
    home: SplashScreen(),
    initialRoute: PageUrl().splash_screen,
    getPages: PagesRoute().names,
    showSemanticsDebugger: false,
  ),);
}
