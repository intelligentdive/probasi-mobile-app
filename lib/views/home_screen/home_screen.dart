import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:probashi/res/colors/ColorHelper.dart';
import 'package:probashi/res/images/ImageHelper.dart';
import 'package:badges/badges.dart' as badges;
import 'package:probashi/res/pages/PageUrl.dart';
import 'package:probashi/views/blog/add_blog_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  
  
  var selected_tab=0.obs;
  
  
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(ImageHelper().forget_otp_background,)
                )
            ),
          ),

          Scaffold(
            backgroundColor: Colors.transparent,
            floatingActionButton:Obx(()=>selected_tab==1?FloatingActionButton(
              onPressed: () {
               showDialog(
                   context: context,
                   barrierDismissible: false,
                   builder: (context)=>AddBlogScreen());
              },
              backgroundColor: ColorHelper().sign_up_page_text_color,
              child: Icon(Icons.edit),
            ):SizedBox()),
            body: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10,top: 20),
                  child: Row(
                    children: [
                      Expanded(child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
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
                      )),
                      Expanded(child: Align(
                        alignment: Alignment.topRight,
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Image.asset(ImageHelper().notification_png,height: 33,),
                        ),
                      )),

                    ],
                  ),
                ),
                Center(
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
                Obx(() => Container(
                  margin: EdgeInsets.only(top: 20),
                  child: selected_tab==0?
                  Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 10,right: 10),
                          height: 45,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: InkWell(
                                    onTap: (){
                                      selected_tab.value=0;
                                    },
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
                                ),
                                Expanded(
                                  child: InkWell(
                                    onTap: (){
                                      selected_tab.value=1;
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color:ColorHelper().home_page_tab_background_color,
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
                                  ),
                                )
                              ],
                            ),
                          )),
                      SizedBox(height: 10,),
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
                              child: InkWell(
                                onTap: (){
                                  Get.toNamed(PageUrl().overseas_recruitment_service);
                                },
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
                  ):
                  Column(
                    children: [

                      Container(
                          margin: EdgeInsets.only(left: 10,right: 10),
                          height: 45,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: InkWell(
                                    onTap: (){

                                      selected_tab.value=0;

                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color:ColorHelper().home_page_tab_background_color,
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10))
                                      ),
                                      height: 45,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset(ImageHelper().service_png,height: 20,),
                                          SizedBox(width: 5,),
                                          Text("services".tr,style: TextStyle(color: Colors.black),)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: InkWell(
                                    onTap: (){
                                      selected_tab.value=1;
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color:ColorHelper().verification_page_btn_color,
                                          borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))
                                      ),
                                      height: 45,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset(ImageHelper().blog_png,height: 20,),
                                          SizedBox(width: 5,),
                                          Text("blogs".tr,style: TextStyle(color: Colors.white),)
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                      // SizedBox(height: 10,),
                      // Container(
                      //     margin: EdgeInsets.only(left: 10,right: 10),
                      //     padding: EdgeInsets.only(left: 10,right: 10),
                      //     decoration: BoxDecoration(
                      //         color: ColorHelper().home_page_search_box_color,
                      //         borderRadius: BorderRadius.circular(5)
                      //     ),
                      //     height: 45,
                      //     child: Card(
                      //         shape: RoundedRectangleBorder(
                      //             borderRadius: BorderRadius.all(Radius.circular(20))
                      //         ),
                      //         child: Container(
                      //           decoration: BoxDecoration(
                      //               borderRadius: BorderRadius.all(Radius.circular(30)),
                      //               color: Colors.white
                      //           ),
                      //           child: TextField(
                      //             decoration: InputDecoration(
                      //               border: InputBorder.none,
                      //               hintText: "Search Blogs".tr,
                      //               hintStyle: TextStyle(color: Color(0xffD4D4D4)),
                      //               prefixIcon: Icon(Icons.search,color: Color(0xffD4D4D4),),
                      //               suffixIcon: Image.asset(ImageHelper().filter_png,scale: 3,),
                      //             ),
                      //           ),
                      //         )
                      //     )),
                      SizedBox(height: 10,),

                      Container(
                        margin: EdgeInsets.only(left: 10,right: 10),
                        constraints: BoxConstraints(
                            minHeight: 230,
                            minWidth: Get.width
                        ),
                        child: Card(
                          elevation: 7.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Container(
                                  height: 50,
                                  child: Row(
                                    children: [
                                      Expanded(child: CircleAvatar(
                                        radius: 21,
                                        backgroundColor: ColorHelper().blog_profile_pic_background,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          child: CachedNetworkImage(imageUrl: "https://cdn-icons-png.flaticon.com/512/147/147144.png",),
                                        ),
                                      ),flex: 1,),
                                      Expanded(child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(" Andrew Boston",style: TextStyle(color: ColorHelper().blog_profile_name_color,fontWeight: FontWeight.bold,fontSize: 14),),
                                          Row(
                                            children: [

                                              Icon(Icons.location_on_outlined,color: Colors.red,size: 20,),
                                              Text("California, USA",style: TextStyle(fontSize: 11),)
                                            ],
                                          )
                                        ],
                                      ),flex: 4,),
                                      // Expanded(
                                      //   child:CircleAvatar(
                                      //     backgroundColor: ColorHelper().blog_edit_btn_color,
                                      //     child:Icon(Icons.edit,color: Colors.white,),
                                      //   ),
                                      //   flex: 1,)
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Expanded(child: Container(
                                        constraints: BoxConstraints(
                                            minHeight: 120
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text("Lorem ipsum dolor sit amet",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                                            SizedBox(height: 5,),
                                            Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua at vero eos et. dolore magna aliquyam erat, sed diam voluptua at vero eos et.",style: TextStyle(fontSize: 12),),
                                            Text("See more".tr,style: TextStyle(fontSize: 12,color: ColorHelper().blog_see_more_color),)
                                          ],
                                        ),
                                      ),flex: 2),
                                      Expanded(child: Container(
                                        margin: EdgeInsets.only(left: 10,right: 10),
                                        constraints: BoxConstraints(
                                            minHeight: 120
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(10)),
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: CachedNetworkImageProvider("https://i.natgeofe.com/k/611a7aa1-57b3-4884-a2f6-2e0857c02257/united-states-statue-of-liberty-vertical.jpg?w=1084.125&h=1517.25")
                                            )
                                        ),
                                      ),flex: 1),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  margin: EdgeInsets.only(top: 10),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Row(
                                                children: [
                                                  SvgPicture.asset(ImageHelper().like),
                                                  SizedBox(width: 5,),
                                                  Text("120")
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 15,right: 10),
                                              child: Row(
                                                children: [
                                                  SvgPicture.asset(ImageHelper().unlike),
                                                  SizedBox(width: 5,),
                                                  Text("120")
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 15,right: 10),
                                              child: Row(
                                                children: [
                                                  SvgPicture.asset(ImageHelper().comment),
                                                  SizedBox(width: 5,),
                                                  Text("Comment",style: TextStyle(color: ColorHelper().blog_comment_icon_title_color,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(ImageHelper().share),
                                            SizedBox(width: 5,),
                                            Text("Share",style: TextStyle(color: ColorHelper().blog_comment_icon_title_color,fontWeight: FontWeight.bold),)
                                          ],
                                        ),
                                      ),


                                    ],
                                  ),
                                )

                              ],
                            ),
                          ),
                        ),
                      ),



                      Container(
                        margin: EdgeInsets.only(left: 10,right: 10),
                        constraints: BoxConstraints(
                            minHeight: 230,
                            minWidth: Get.width
                        ),
                        child: Card(
                          elevation: 7.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Container(
                                  height: 50,
                                  child: Row(
                                    children: [
                                      Expanded(child: badges.Badge(
                                        badgeContent: Text("Service Provider",style: TextStyle(color: Colors.white,fontSize: 5),),
                                        position: badges.BadgePosition.topEnd(top: -5,end: -18),
                                        badgeStyle: badges.BadgeStyle(
                                          shape: badges.BadgeShape.square,
                                          borderRadius: BorderRadius.circular(4),
                                          badgeColor: ColorHelper().blog_service_provider_profile_badge_color,
                                        ),
                                        child: CircleAvatar(
                                          radius: 21,
                                          backgroundColor: ColorHelper().blog_profile_pic_background,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            child: CachedNetworkImage(imageUrl: "https://cdn-icons-png.flaticon.com/512/147/147144.png",),
                                          ),
                                        ),
                                      ),flex: 1,),
                                      Expanded(child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(" Andrew Boston",style: TextStyle(color: ColorHelper().blog_profile_name_color,fontWeight: FontWeight.bold,fontSize: 14),),
                                          Row(
                                            children: [

                                              Icon(Icons.location_on_outlined,color: Colors.red,size: 20,),
                                              Text("California, USA",style: TextStyle(fontSize: 11),)
                                            ],
                                          )
                                        ],
                                      ),flex: 4,),
                                      // Expanded(
                                      //   child:CircleAvatar(
                                      //     backgroundColor: ColorHelper().blog_edit_btn_color,
                                      //     child:Icon(Icons.edit,color: Colors.white,),
                                      //   ),
                                      //   flex: 1,)
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Lorem ipsum dolor sit amet",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                                      SizedBox(height: 5,),
                                      RichText(
                                          text: TextSpan(
                                              text: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.",
                                              style: TextStyle(fontSize: 12,color: Colors.black),
                                              children: [
                                                TextSpan(
                                                  text: " #Ipsum #Lorem2020",
                                                  style: TextStyle(fontSize: 12,color: ColorHelper().blog_see_more_color),
                                                )
                                              ]
                                          )
                                      ),
                                      Container(
                                        height: 50,
                                        margin: EdgeInsets.only(top: 10,right: 20,left: 20,bottom: 10),
                                        decoration: BoxDecoration(
                                          color: ColorHelper().blog_link_background_color,
                                          borderRadius: BorderRadius.all(Radius.circular(5))
                                        ),
                                        child: Row(
                                          children: [
                                            Expanded(child: Container(
                                              margin: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                color: ColorHelper().blog_link_icon_background_color,
                                                borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5))
                                              ),
                                              child: Center(child: FaIcon(FontAwesomeIcons.link,color: Colors.white,)),
                                            ),flex: 2,),
                                            Expanded(child: Container(
                                              child: Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),),),flex: 8,),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  margin: EdgeInsets.only(top: 10),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Row(
                                                children: [
                                                  SvgPicture.asset(ImageHelper().like),
                                                  SizedBox(width: 5,),
                                                  Text("120")
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 15,right: 10),
                                              child: Row(
                                                children: [
                                                  SvgPicture.asset(ImageHelper().unlike),
                                                  SizedBox(width: 5,),
                                                  Text("120")
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 15,right: 10),
                                              child: Row(
                                                children: [
                                                  SvgPicture.asset(ImageHelper().comment),
                                                  SizedBox(width: 5,),
                                                  Text("Comment",style: TextStyle(color: ColorHelper().blog_comment_icon_title_color,fontWeight: FontWeight.bold),)
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(ImageHelper().share),
                                            SizedBox(width: 5,),
                                            Text("Share",style: TextStyle(color: ColorHelper().blog_comment_icon_title_color,fontWeight: FontWeight.bold),)
                                          ],
                                        ),
                                      ),


                                    ],
                                  ),
                                )

                              ],
                            ),
                          ),
                        ),
                      )

                    ],
                  ),
                )),

              ],
            ),
          )


        ],
      ),
    );
  }
}
