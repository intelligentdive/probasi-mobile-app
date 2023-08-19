import 'package:get/get.dart';
import 'package:probashi/res/pages/PageUrl.dart';
import 'package:probashi/views/auth/sign_up_screen.dart';
import 'package:probashi/views/landing_screen/landingScreen.dart';
import 'package:probashi/views/splash_screen/splashScreen.dart';

class PagesRoute{

  var names=[
    GetPage(
        name: PageUrl().splash_screen,
        page: ()=>SplashScreen()
    ),
    GetPage(
        name: PageUrl().landing_screen,
        page: ()=>LandingScreen()
    ),
    GetPage(
        name: PageUrl().signupScreen,
        page: ()=>SignupScreen()
    )
  ];

}