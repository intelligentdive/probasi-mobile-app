import 'package:get/get.dart';
import 'package:probashi/res/pages/PageUrl.dart';
import 'package:probashi/views/auth/forget_otp_screen.dart';
import 'package:probashi/views/auth/sign_in_screen.dart';
import 'package:probashi/views/auth/sign_up_phone_verification.dart';
import 'package:probashi/views/auth/sign_up_screen.dart';
import 'package:probashi/views/blog/add_blog_screen.dart';
import 'package:probashi/views/home_screen/home_screen.dart';
import 'package:probashi/views/landing_screen/landing_screen.dart';
import 'package:probashi/views/services/overseas_recruitment_service_screen.dart';
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
    GetPage(
        name: PageUrl().home_screen,
        page: ()=>HomeScreen()
    ),
    GetPage(
        name: PageUrl().digital_services,
        page: ()=>SplashScreen()
    ),
    GetPage(
        name: PageUrl().immigration_consultancy_service,
        page: ()=>SplashScreen()
    ),
    GetPage(
        name: PageUrl().legal_services,
        page: ()=>SplashScreen()
    ),
    GetPage(
        name: PageUrl().medical_consultancy_service,
        page: ()=>SplashScreen()
    ),
    GetPage(
        name: PageUrl().overseas_recruitment_service,
        page: ()=>OvserseasRequitmentServiceScreen()
    ),
    GetPage(
        name: PageUrl().property_management,
        page: ()=>SplashScreen()
    ),
    GetPage(
        name: PageUrl().student_consultancy_service,
        page: ()=>SplashScreen()
    ),
    GetPage(
        name: PageUrl().tourism_services,
        page: ()=>SplashScreen()
    ),
    GetPage(
        name: PageUrl().trade_faciliation_service,
        page: ()=>SplashScreen()
    ),
    GetPage(
        name: PageUrl().training_faciliation_service,
        page: ()=>SplashScreen()
    )
  ];
}