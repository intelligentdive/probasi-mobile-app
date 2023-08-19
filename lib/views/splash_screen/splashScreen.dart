import 'package:flutter/material.dart';
import 'package:probashi/res/images/ImageHelper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
          Container(
            child: Center(
              child: Image.asset(ImageHelper().logo_png,height: 200,width: 200,),
            ),
          ),
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
