import 'package:get/get.dart';
import 'package:probashi/res/pages/PageUrl.dart';
import 'package:probashi/views/auth/forget_otp_screen.dart';
import 'package:probashi/views/auth/sign_in_screen.dart';
import 'package:probashi/views/auth/sign_up_phone_verification.dart';
import 'package:probashi/views/auth/sign_up_screen.dart';
import 'package:probashi/views/landing_screen/landing_screen.dart';
import 'package:probashi/views/splash_screen/splash_screen.dart';

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
    ),
    GetPage(
        name: PageUrl().signup_phone_verification,
        page: ()=>SignUpPhoneVerification()
    ),
    GetPage(
        name: PageUrl().signinScreen,
        page: ()=>SignInScreen()
    ),
    GetPage(
        name: PageUrl().forget_otp_screen,
        page: ()=>ForgetOtpScreen()
    ),
  ];

}