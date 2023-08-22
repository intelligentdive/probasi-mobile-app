import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:probashi/res/colors/ColorHelper.dart';
import 'package:probashi/res/images/ImageHelper.dart';
import 'package:badges/badges.dart' as badges;
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: -10,
              left: 0,
              right: 0,
              child: Image.asset(ImageHelper().forget_otp_background,fit: BoxFit.cover),
            ),
            Positioned(
              left: 20,
              top: 20,
              child: Row(
                children: [
                  badges.Badge(
                    badgeContent: Text("65% Complete",style: TextStyle(color: Colors.white,fontSize: 10),),
                    position: badges.BadgePosition.topEnd(top: -5,end: -67),
                    badgeStyle: badges.BadgeStyle(
                      shape: badges.BadgeShape.square,
                      borderRadius: BorderRadius.circular(4),
                      badgeColor: ColorHelper().verification_page_btn_color,
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image.asset(ImageHelper().user_avatar_png),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 20,
              top: 20,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Image.asset(ImageHelper().notification_png,height: 33,),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              left: 0,
              top: 55,
              child: Center(
                child:Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 7,right: 7,top: 5,bottom: 5),
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: Text("become_a_service_provider".tr,style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.only(left: 7,right: 7,top: 5,bottom: 5),
                      decoration: BoxDecoration(
                          color: ColorHelper().home_page_welcome_color,
                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: RichText(
                        text: TextSpan(
                            text: "hello".tr,
                            style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text: " ",
                            ),
                            TextSpan(
                                text: "Salauddin".tr,
                                style: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold),
                            )
                          ]

                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              right: 0,
              left: 0,
              top: 150,
              child: Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                  height: 45,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color:ColorHelper().verification_page_btn_color,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10))
                            ),
                            height: 45,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(ImageHelper().service_png,height: 20,),
                                SizedBox(width: 5,),
                                Text("services".tr,style: TextStyle(color: Colors.white),)
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))
                            ),
                            height: 45,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(ImageHelper().blog_png,height: 20,),
                                SizedBox(width: 5,),
                                Text("blogs".tr,style: TextStyle(color: Colors.black),)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
            ),
            Positioned(
              right: 0,
              left: 0,
              top: 210,
              bottom: 0,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 10,right: 10),
                        padding: EdgeInsets.only(left: 10,right: 10),
                        decoration: BoxDecoration(
                            color: ColorHelper().home_page_search_box_color,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        height: 45,
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                  color: Colors.white
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Search here".tr,
                                  hintStyle: TextStyle(color: Color(0xffD4D4D4)),
                                  prefixIcon: Icon(Icons.search,color: Color(0xffD4D4D4),),
                                  suffixIcon: Image.asset(ImageHelper().filter_png,scale: 3,),
                                ),
                              ),
                            )
                        )),
                    SizedBox(height: 10,),
                    Container(
                      margin: EdgeInsets.only(left: 13,right: 13),
                      child: Row(
                        children: [
                          Expanded(
                            child: Card(
                                color: ColorHelper().service_overseas_recruitment,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Image.asset(ImageHelper().overseas_recruitment_service,height: 45,),
                                      SizedBox(height: 8,),
                                      Center(child: Text("Overseas Recruitment".tr,textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 10),))
                                    ],
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            child: Card(
                                color: ColorHelper().service_student_consultancy,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Image.asset(ImageHelper().student_consultancy_service,height: 45,),
                                      SizedBox(height: 8,),
                                      Center(child: Text("Student Consultancy".tr,textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 10),))
                                    ],
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            child: Card(
                                color: ColorHelper().service_imigration_consultancy,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Image.asset(ImageHelper().immigration_consultancy_service,height: 45,),
                                      SizedBox(height: 8,),
                                      Center(child: Text("Immigration Consultancy".tr,textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 10),))
                                    ],
                                  ),
                                )
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 13,right: 13),
                      child: Row(
                        children: [
                          Expanded(
                            child: Card(
                                color: ColorHelper().service_medical_consultancy,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Image.asset(ImageHelper().medical_consultancy_service,height: 45,),
                                      SizedBox(height: 8,),
                                      Center(child: Text("Medical Consultancy".tr,textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 10),))
                                    ],
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            child: Card(
                                color: ColorHelper().service_legal,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Image.asset(ImageHelper().legal_services,height: 45,),
                                      SizedBox(height: 8,),
                                      Center(child: Text("Legal Services".tr,textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 10),))
                                    ],
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            child: Card(
                                color: ColorHelper().service_digital,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Image.asset(ImageHelper().digital_services,height: 45,),
                                      SizedBox(height: 8,),
                                      Center(child: Text("Digital Services".tr,textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 10),))
                                    ],
                                  ),
                                )
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 13,right: 13),
                      child: Row(
                        children: [
                          Expanded(
                            child: Card(
                                color: ColorHelper().service_tourism,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Image.asset(ImageHelper().tourism_services,height: 45,),
                                      SizedBox(height: 8,),
                                      Center(child: Text("Tourism Services".tr,textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 10),))
                                    ],
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            child: Card(
                                color: ColorHelper().service_property_management,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Image.asset(ImageHelper().property_management,height: 45,),
                                      SizedBox(height: 8,),
                                      Center(child: Text("Property Management".tr,textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 10),))
                                    ],
                                  ),
                                )
                            ),
                          ),
                          Expanded(
                            child: Card(
                                color: ColorHelper().service_tranning,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Image.asset(ImageHelper().training_faciliation_service,height: 45,),
                                      SizedBox(height: 8,),
                                      Center(child: Text("Training & Faciliation".tr,textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 10),))
                                    ],
                                  ),
                                )
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 13,right: 13),
                      child: Row(
                        children: [
                          Expanded( child: SizedBox(), ),
                          Expanded(
                            child: Card(
                                color: ColorHelper().service_trade,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Image.asset(ImageHelper().trade_faciliation_service,height: 45,),
                                      SizedBox(height: 8,),
                                      Center(child: Text("Trade Faciliation".tr,textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 10),))
                                    ],
                                  ),
                                )
                            ),
                          ),
                          Expanded( child: SizedBox(), ),
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
