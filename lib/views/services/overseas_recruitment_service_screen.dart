import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:probashi/res/colors/ColorHelper.dart';
import 'package:probashi/res/helper/ButtonHelper.dart';
import 'package:probashi/res/images/ImageHelper.dart';
import 'package:badges/badges.dart' as badges;
import 'package:rotated_corner_decoration/rotated_corner_decoration.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class OvserseasRequitmentServiceScreen extends StatefulWidget {
  const OvserseasRequitmentServiceScreen({Key? key}) : super(key: key);

  @override
  State<OvserseasRequitmentServiceScreen> createState() => OvserseasRequitmentServiceState();
}

enum ProviderType{company,individual,both}

class OvserseasRequitmentServiceState extends State<OvserseasRequitmentServiceScreen> {

  var provider_type=ProviderType.company.obs;

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
                    image: AssetImage(ImageHelper().forget_otp_background)
                )
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: PageView(
              children: [
                ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20,left: 20,right: 20),
                      height: 50,
                      width: Get.width,
                      child: Row(
                        children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: GestureDetector(
                                onTap: (){
                                  Get.back();
                                },
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(Icons.arrow_back,color: ColorHelper().landing_screen_button_color,),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
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
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.topRight,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Image.asset(ImageHelper().message_icon_png)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: Get.height/1.23,
                      // height: Get.height/1.3,
                      // width: Get.width,
                      margin: EdgeInsets.only(top: 10,left: 20,right: 20),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black12.withOpacity(0.1))
                      ),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: ListView(
                          children: [
                            Container(
                              height: 45,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(30))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      prefixIcon: Icon(Icons.search,color: Color(0xffD4D4D4),),
                                      hintText: "Search here".tr,
                                      hintStyle: TextStyle(color: Color(0xffD4D4D4) ),
                                      suffixIcon: Image.asset(ImageHelper().filter_png,scale: 3,)
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 8),
                              child: Obx(()=>ListView(
                                shrinkWrap: true,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(left: 12),
                                      child: Text("Select Service Provider Type".tr)),
                                  Row(
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Radio(
                                                value: ProviderType.company,
                                                groupValue: provider_type.value,
                                                onChanged: (value){
                                                  provider_type.value=value!;
                                                }),
                                            Text("Company".tr,style: TextStyle(fontSize: 12),)
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Radio(
                                                value: ProviderType.individual,
                                                groupValue: provider_type.value,
                                                onChanged: (value){
                                                  provider_type.value=value!;
                                                }),
                                            Text("Individual".tr,style: TextStyle(fontSize: 12))
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Radio(
                                                value: ProviderType.both,
                                                groupValue: provider_type.value,
                                                onChanged: (value){
                                                  provider_type.value=value!;
                                                }),
                                            Text("Both".tr,style: TextStyle(fontSize: 12))
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    height: 120,
                                    margin: EdgeInsets.only(left: 8,right: 8),
                                    padding: EdgeInsets.only(left: 5,right: 5,top: 5),
                                    decoration: BoxDecoration(
                                        color: ColorHelper().service_page_box_background,
                                        borderRadius: BorderRadius.all(Radius.circular(3))
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 26,
                                          color: Colors.white,
                                          padding: EdgeInsets.only(left: 7),
                                          child: TextField(
                                            readOnly: true,
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: "Select Region".tr,
                                                suffixIcon: Icon(Icons.keyboard_arrow_down),
                                                hintStyle: TextStyle(fontSize: 13)
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 84,
                                          child: RawScrollbar(
                                            isAlwaysShown: true,
                                            child: ListView(
                                              children: [
                                                ...Iterable.generate(10).map((e) => Container(
                                                  height: 26,
                                                  color: Colors.white,
                                                  padding: EdgeInsets.only(left: 7),
                                                  margin: EdgeInsets.only(top: 2,right: 10),
                                                  child: Row(
                                                    children: [
                                                      CachedNetworkImage(imageUrl: "https://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Flag_of_the_United_States.svg/1200px-Flag_of_the_United_States.svg.png",width: 30,),
                                                      SizedBox(width: 10,),
                                                      Text("American Country")
                                                    ],
                                                  ),
                                                ))
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    height: 120,
                                    margin: EdgeInsets.only(left: 8,right: 8),
                                    padding: EdgeInsets.only(left: 5,right: 5,top: 5),
                                    decoration: BoxDecoration(
                                        color: ColorHelper().service_page_box_background,
                                        borderRadius: BorderRadius.all(Radius.circular(3))
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 26,
                                          color: Colors.white,
                                          padding: EdgeInsets.only(left: 7),
                                          child: TextField(
                                            readOnly: true,
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: "Select Country".tr,
                                                suffixIcon: Icon(Icons.keyboard_arrow_down),
                                                hintStyle: TextStyle(fontSize: 13)
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 84,
                                          child: RawScrollbar(
                                            isAlwaysShown: true,
                                            child: ListView(
                                              children: [
                                                ...Iterable.generate(10).map((e) => Container(
                                                  height: 26,
                                                  color: Colors.white,
                                                  padding: EdgeInsets.only(left: 7),
                                                  margin: EdgeInsets.only(top: 2,right: 10),
                                                  child: Row(
                                                    children: [
                                                      CachedNetworkImage(imageUrl: "https://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Flag_of_the_United_States.svg/1200px-Flag_of_the_United_States.svg.png",width: 30,),
                                                      SizedBox(width: 10,),
                                                      Text("American")
                                                    ],
                                                  ),
                                                ))
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    height: 120,
                                    margin: EdgeInsets.only(left: 8,right: 8),
                                    padding: EdgeInsets.only(left: 5,right: 5,top: 5),
                                    decoration: BoxDecoration(
                                        color: ColorHelper().service_page_box_background,
                                        borderRadius: BorderRadius.all(Radius.circular(3))
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 26,
                                          color: Colors.white,
                                          padding: EdgeInsets.only(left: 7),
                                          child: TextField(
                                            readOnly: true,
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: "Select Job Type".tr,
                                                suffixIcon: Icon(Icons.keyboard_arrow_down),
                                                hintStyle: TextStyle(fontSize: 13)
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 84,
                                          child: RawScrollbar(
                                            isAlwaysShown: true,
                                            child: ListView(
                                              children: [
                                                ...Iterable.generate(10).map((e) => Container(
                                                  height: 26,
                                                  color: Colors.white,
                                                  padding: EdgeInsets.only(left: 7),
                                                  margin: EdgeInsets.only(top: 2,right: 10),
                                                  child: Row(
                                                    children: [
                                                      SizedBox(width: 5,),
                                                      Text("Computer Operator ")
                                                    ],
                                                  ),
                                                ))
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    height: 92,
                                    margin: EdgeInsets.only(left: 8,right: 8),
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: ColorHelper().service_page_box_background,
                                        borderRadius: BorderRadius.all(Radius.circular(7))
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text("Budget".tr,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                        SizedBox(height: 8,),
                                        SfRangeSliderTheme(
                                          data: SfRangeSliderThemeData(
                                              labelOffset: Offset(0.0, -26.0),
                                              activeLabelStyle: TextStyle(fontSize: 10,color: Colors.black),
                                              inactiveLabelStyle: TextStyle(fontSize: 10,color: Colors.black),
                                              activeTrackHeight: 2,
                                              inactiveTrackHeight: 2,
                                              activeTickColor: Colors.black,
                                              inactiveTrackColor: Colors.black,
                                              thumbRadius: 6.0,
                                              thumbColor: Colors.white,
                                              thumbStrokeColor: Colors.black


                                          ),
                                          child: SfRangeSlider(
                                            min: 25000,
                                            max: 100000,
                                            values: SfRangeValues(25000,50000),
                                            interval: 25000,
                                            showLabels: true,
                                            tickShape:SfTickShape(
                                            ),
                                            onChanged: (dynamic value){

                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  SizedBox(height: 10,),
                                  Center(
                                    child: Container(
                                      height: 30,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          color: ColorHelper().home_page_search_box_color,
                                          borderRadius: BorderRadius.all(Radius.circular(30))
                                      ),
                                      child: Center(child: Text("Search".tr,style: TextStyle(fontSize: 14,color: Colors.white),)),
                                    ),
                                  ),

                                ],
                              )),
                            )


                          ],
                        ),
                      ),
                    ),

                  ],
                ),
                ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20,left: 20,right: 20),
                      height: 50,
                      width: Get.width,
                      child: Row(
                        children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: GestureDetector(
                                onTap: (){
                                  Get.back();
                                },
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(Icons.arrow_back,color: ColorHelper().landing_screen_button_color,),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
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
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.topRight,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Image.asset(ImageHelper().message_icon_png)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: Get.height/1.23,
                      // height: Get.height/1.3,
                      // width: Get.width,
                      margin: EdgeInsets.only(top: 10,left: 20,right: 20),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black12.withOpacity(0.1))
                      ),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: ListView(
                          children: [
                            SizedBox(height: 20,),
                            Center(child: Text("Available Jobs",style: TextStyle(fontSize: 20,color: ColorHelper().avaliable_jobs_color),)),
                            ...Iterable.generate(10).map((e) => InkWell(
                              onTap: (){

                              },
                              child: Container(
                                height: 100,
                                margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                    gradient: ColorHelper().container_gradient_light_aquamarine
                                ),
                                foregroundDecoration: RotatedCornerDecoration.withColor(
                                    color: ColorHelper().roted_corner_color,
                                    badgeSize: Size(30,30),
                                    badgePosition: BadgePosition.topStart,
                                    textSpan: TextSpan(text: "Ad",style: TextStyle(fontSize: 12))

                                ),
                                child:Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(child: Center(
                                          child: Container(
                                            margin: EdgeInsets.only(top: 5,left: 10),
                                            height: 55,
                                            decoration: BoxDecoration(
                                                border: Border.all(color: Colors.white,width: 1),
                                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                                image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: CachedNetworkImageProvider("https://cdn.jumeirah.com/-/mediadh/dh/hospitality/jumeirah/hotels/dubai/madinat-jumeirah/al-qasr-at-madinat-jumeirah/hero/jumeirah-al-qasr-entrance-aerial-drone_landscape.jpg?h=1080&w=1620")
                                                )
                                            ),
                                          ),
                                        ),flex: 2),
                                        Expanded(child:Container(
                                          height: 100,
                                          margin: EdgeInsets.only(left: 10),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                  right: 0,
                                                  top: 0,
                                                  bottom: 0,
                                                  child: Icon(Icons.arrow_forward_ios_rounded,size: 60,color: Colors.white,)
                                              ),
                                              Positioned(
                                                top:15,
                                                left: 0,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    Text("Jumeirah Al Qasr CO. PVT. LTD",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),
                                                    SizedBox(height: 5,),
                                                    Row(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Image.asset(ImageHelper().location_png,height: 15,width: 15),
                                                        SizedBox(width: 5,),
                                                        Text("Soudi Arabia",style: TextStyle(color: Colors.white,fontSize: 10),),
                                                      ],
                                                    ),
                                                    SizedBox(height: 5,),
                                                    Row(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Image.asset(ImageHelper().calender_png,height: 15,width: 15,),
                                                        SizedBox(width: 5,),
                                                        Text("10 January 2022",style: TextStyle(color: Colors.white,fontSize: 10),),
                                                      ],
                                                    ),
                                                    SizedBox(height: 5,),
                                                    Text("Provided by: Silver Line Associate",style: TextStyle(color: Colors.white,fontSize: 10),),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),flex:6,)
                                      ],
                                    )

                                  ],
                                ),
                              ),
                            ))


                          ],
                        ),
                      ),
                    ),

                  ],
                ),
                ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20,left: 20,right: 20),
                      height: 50,
                      width: Get.width,
                      child: Row(
                        children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: GestureDetector(
                                onTap: (){
                                  Get.back();
                                },
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(Icons.arrow_back,color: ColorHelper().landing_screen_button_color,),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
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
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.topRight,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Image.asset(ImageHelper().message_icon_png)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: Get.height/1.23,
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(top: 10,left: 20,right: 20),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black12.withOpacity(0.1))
                      ),
                      child: Container(

                        child: ListView(
                          children: [
                            SizedBox(height: 20,),
                            Center(child: Text("Requirement Details of".tr,style: TextStyle(fontSize: 15,color: ColorHelper().requirement_title_color),)),
                            Center(child: Text("Jumeirah Al Qasr CO. PVT. LTD",style: TextStyle(fontSize: 16,color: ColorHelper().requirement_title_color,fontWeight: FontWeight.bold),)),
                            Container(
                              margin: EdgeInsets.all(10),
                              height: 170,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: CachedNetworkImageProvider("https://cdn.jumeirah.com/-/mediadh/dh/hospitality/jumeirah/hotels/dubai/madinat-jumeirah/al-qasr-at-madinat-jumeirah/hero/jumeirah-al-qasr-entrance-aerial-drone_landscape.jpg?h=1080&w=1620")
                                  )
                              ),
                            ),
                            Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text("Jumeirah Al Qasr CO. PVT. LTD",style: TextStyle(fontSize: 19,color: ColorHelper().requirement_title_color),)
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 10,top: 2),
                                child: Text("Location: Soudi Arabia",style: TextStyle(fontSize: 15,color: ColorHelper().requirement_title_color),)
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 10,top: 10,right: 10),
                                child: Text(
                                  "Complimentary daily breakfast with a choice of lunch or dinner at selected restaurants. Exclusive access to our private beach and unlimited entry to Wild Wadi Waterpark™. Healthclub Talise Fitness. Exclusive Offers. Wild Wadi access. Complimentary daily breakfast with a choice of lunch or dinner at selected restaurants. Exclusive access to our private beach and unlimited entry to Wild Wadi Waterpark™. Healthclub Talise Fitness. Exclusive Offers. Wild Wadi access."
                                  ,style: TextStyle(fontSize: 14,color: ColorHelper().requirement_title_color),textAlign: TextAlign.justify,)
                            ),
                            SizedBox(height: 30,),
                            Center(
                              child: Container(
                                height: 30,
                                width: 140,
                                decoration: BoxDecoration(
                                    color: ColorHelper().home_page_search_box_color,
                                    borderRadius: BorderRadius.all(Radius.circular(5))
                                ),
                                child: Center(child: Text("Book Appointment".tr,style: TextStyle(fontSize: 14,color: Colors.white),)),
                              ),
                            ),
                            SizedBox(height: 10,),
                          ],
                        ),
                      ),
                    ),

                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
