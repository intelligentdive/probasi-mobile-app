import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:probashi/res/colors/ColorHelper.dart';
import 'package:probashi/res/images/ImageHelper.dart';
import 'package:badges/badges.dart' as badges;
import 'package:probashi/res/pages/PageUrl.dart';


class OvserseasRequitmentServiceScreen extends StatefulWidget {
  const OvserseasRequitmentServiceScreen({Key? key}) : super(key: key);

  @override
  State<OvserseasRequitmentServiceScreen> createState() => OvserseasRequitmentServiceState();
}

enum ProviderType{company,individual,both}

class OvserseasRequitmentServiceState extends State<OvserseasRequitmentServiceScreen> {
  EventList<Event> _markedDateMap = new EventList<Event>(
    events: {

    },
  );

  var provider_type=ProviderType.company.obs;

  var _pageController=PageController(initialPage: 0);

  ScrollController _scrollController_1=ScrollController();
  ScrollController _scrollController_2=ScrollController();
  ScrollController _scrollController_3=ScrollController();
  ScrollController _scrollController_4=ScrollController();
  ScrollController _scrollController_5=ScrollController();
  ScrollController _scrollController_6=ScrollController();



  @override
  Widget build(BuildContext context) {

    _markedDateMap.add(new DateTime(DateTime.now().add(Duration(days: 1)).year,DateTime.now().add(Duration(days: 1)).month, DateTime.now().add(Duration(days: 1)).day),
        new Event(
            date: new DateTime(DateTime.now().add(Duration(days: 1)).year,DateTime.now().add(Duration(days: 1)).month, DateTime.now().add(Duration(days: 1)).day),
            dot: Container(color: Colors.white,)

        ));
    _markedDateMap.add(new DateTime(DateTime.now().add(Duration(days: 2)).year,DateTime.now().add(Duration(days: 2)).month, DateTime.now().add(Duration(days:2)).day),
        new Event(
            date: new DateTime(DateTime.now().add(Duration(days: 2)).year,DateTime.now().add(Duration(days: 2)).month, DateTime.now().add(Duration(days: 2)).day),
            dot: Container(color: Colors.white,)

        ));
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
              controller: _pageController,
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
                                backgroundColor: Colors.transparent,
                                child: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Image.asset(ImageHelper().notification_png)),
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
                            Center(child: Text("Sub Services",style: TextStyle(fontSize: 20,color: ColorHelper().avaliable_jobs_color),)),
                            ...Iterable.generate(10).map((e) => InkWell(
                              onTap: (){
                                _pageController.jumpToPage(1);                              },
                              child: Container(
                                height: 75,
                                margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                                padding: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                    gradient: ColorHelper().container_gradient_dark_blue
                                ),

                                child:Row(
                                  children: [
                                    Expanded(child: Text("Student File Service",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),flex: 4,),
                                    Expanded(child: Icon(Icons.arrow_forward_ios_rounded,size: 45,color: Colors.white,),flex: 1,)


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
                                backgroundColor: Colors.transparent,
                                child: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Image.asset(ImageHelper().notification_png)),
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
                                            controller: _scrollController_1,
                                            isAlwaysShown: true,
                                            child: ListView(
                                              controller: _scrollController_1,
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
                                            controller: _scrollController_2,
                                            child: ListView(
                                              controller: _scrollController_2,
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



                                  SizedBox(height: 60,),
                                  Center(
                                    child: InkWell(
                                      onTap: (){
                                        _pageController.jumpToPage(2);
                                      },
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
                                backgroundColor: Colors.transparent,
                                child: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Image.asset(ImageHelper().notification_png)),
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
                            Center(child: Text("Agency",style: TextStyle(fontSize: 20,color: ColorHelper().avaliable_jobs_color),)),
                            ...Iterable.generate(10).map((e) => InkWell(
                              onTap: (){
                                _pageController.jumpToPage(3);
                              },
                              child: Container(
                                height: 75,
                                margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                                padding: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                    gradient: ColorHelper().container_gradient_light_aquamarine
                                ),

                                child:Row(
                                  children: [
                                    Expanded(child: Text("Jumeirah Al Qasr CO. PVT. LTD",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),),flex: 4,),
                                    Expanded(child: Icon(Icons.arrow_forward_ios_rounded,size: 45,color: Colors.white,),flex: 1,)


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
                                backgroundColor: Colors.transparent,
                                child: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Image.asset(ImageHelper().notification_png)),
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
                                padding: EdgeInsets.only(left: 10,top: 10,right: 10),
                                child: Text(
                                  "Complimentary daily breakfast with a choice of lunch or dinner at selected restaurants. Exclusive access to our private beach and unlimited entry to Wild Wadi Waterpark™. Healthclub Talise Fitness. Exclusive Offers. Wild Wadi access. Complimentary daily breakfast with a choice of lunch or dinner at selected restaurants. Exclusive access to our private beach and unlimited entry to Wild Wadi Waterpark™. Healthclub Talise Fitness. Exclusive Offers. Wild Wadi access."
                                  ,style: TextStyle(fontSize: 14,color: ColorHelper().requirement_title_color),textAlign: TextAlign.justify,)
                            ),
                            SizedBox(height: 30,),
                            Center(
                              child: InkWell(
                                onTap: (){
                                  _pageController.jumpToPage(4);
                                },
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
                            ),
                            SizedBox(height: 10,),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
                Column(
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
                                backgroundColor: Colors.transparent,
                                child: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Image.asset(ImageHelper().notification_png)),
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
                          shrinkWrap: true,
                          children: [
                            SizedBox(height: 20,),
                            Center(child: Text("Please Pick a Date".tr,style: TextStyle(fontSize: 15,color: ColorHelper().requirement_title_color),)),
                            Container(
                              height: 275,
                              decoration: BoxDecoration(
                                color: ColorHelper().calender_background_color,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              padding: EdgeInsets.only(left: 20,right: 20),
                              margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                              child: CalendarCarousel(
                                headerMargin: EdgeInsets.only(top: 2),
                                minSelectedDate: DateTime.now().add(Duration(days: 4)),
                                daysHaveCircularBorder: true,
                                showOnlyCurrentMonthDate: true,
                                selectedDayButtonColor: Colors.green,
                                todayButtonColor: Colors.transparent,
                                todayBorderColor: Colors.transparent,
                                weekdayTextStyle: TextStyle(color: Colors.white,fontSize: 12),
                                weekendTextStyle: TextStyle(color: Colors.white,fontSize: 12),
                                inactiveWeekendTextStyle: TextStyle(color: Colors.white,fontSize: 12),
                                weekFormat: false,
                                markedDatesMap: _markedDateMap,
                                selectedDateTime:  DateTime.now().add(Duration(days: 360)),
                                targetDateTime: DateTime.now(),
                                customGridViewPhysics: NeverScrollableScrollPhysics(),
                                markedDateCustomShapeBorder:
                                CircleBorder(side: BorderSide(color: Colors.green)),
                                showHeader: true,
                                headerTextStyle: TextStyle(
                                    color: Colors.white
                                ),
                                todayTextStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                selectedDayTextStyle: TextStyle(
                                  color: Colors.black,
                                ),
                                maxSelectedDate: DateTime.now().add(Duration(days: 360)),
                                prevDaysTextStyle: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                                daysTextStyle: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                                nextDaysTextStyle: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                                inactiveDaysTextStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                                onDayPressed: (datetime,event){

                                },
                              ),
                            ),
                            Center(
                              child: Icon(Icons.keyboard_arrow_down_sharp,color: ColorHelper().calender_background_color,),
                            ),
                            Center(
                              child: Text("Friday, December 10"),
                            ),
                            SizedBox(height: 5),
                            Container(
                              height: 147,
                              margin: EdgeInsets.only(left: 8,right: 8),
                              padding: EdgeInsets.only(left: 5,right: 5,top: 5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(7)),
                                border: Border.all(color: ColorHelper().slot_container_border_color)
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 35,
                                    color: Colors.white,
                                    padding: EdgeInsets.only(left: 7,top: 5),
                                    child: Text("Select Time Slot".tr),
                                  ),
                                  Container(
                                    height: 100,
                                    child: RawScrollbar(
                                      controller: _scrollController_4,
                                      isAlwaysShown: true,
                                      child: ListView(
                                        controller: _scrollController_4,
                                        children: [
                                          ...Iterable.generate(10).map((e) => Container(
                                            height: 30,
                                            decoration: BoxDecoration(
                                              border: Border.all(color: ColorHelper().slot_radius_color)
                                            ),
                                            padding: EdgeInsets.only(left: 7),
                                            margin: EdgeInsets.only(top: 2,right: 10),
                                            child: Center(child: Text("10:00 am - 10:30 am")),
                                          ))
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Center(
                              child: InkWell(
                                onTap: (){
                                  _pageController.jumpToPage(5);
                                },
                                child: Container(
                                  height: 30,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: ColorHelper().home_page_search_box_color,
                                      borderRadius: BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Center(child: Text("Next".tr,style: TextStyle(fontSize: 14,color: Colors.white),)),
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Center(
                              child: Text("Or".tr),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height: 40,
                              margin: EdgeInsets.only(left: 10,right: 10),
                              decoration: BoxDecoration(
                                color: ColorHelper().slot_call_container_background,
                                borderRadius: BorderRadius.circular(6)
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Call Now :  "),
                                  FaIcon(FontAwesomeIcons.facebook),
                                  SizedBox(width: 5,),
                                  FaIcon(FontAwesomeIcons.whatsapp),
                                ],
                              ),
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
                                backgroundColor: Colors.transparent,
                                child: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Image.asset(ImageHelper().notification_png)),
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
                      margin: EdgeInsets.only(top: 80,left: 20,right: 20),
                      child: Container(

                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            Center(
                              child: Container(
                                height: 30,
                                width: 120,
                                decoration: BoxDecoration(
                                    color: ColorHelper().slot_container_border_color,
                                    borderRadius: BorderRadius.all(Radius.circular(5))
                                ),
                                child: Center(child: Text("Appointment".tr,style: TextStyle(fontSize: 14,color: Colors.white),)),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Name".tr,style: TextStyle(color: ColorHelper().appointment_input_field_title),),
                                  SizedBox(height: 5,),
                                  TextField(
                                    decoration: InputDecoration(
                                        isDense:true,
                                        contentPadding: EdgeInsets.only(top: 11,bottom: 11,left: 10),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(color:ColorHelper().appointment_input_field_border),
                                            borderRadius: BorderRadius.all(Radius.circular(7))
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color:ColorHelper().appointment_input_field_border),
                                            borderRadius: BorderRadius.all(Radius.circular(7))
                                        )
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Phone Number".tr,style: TextStyle(color: ColorHelper().appointment_input_field_title),),
                                  SizedBox(height: 5,),
                                  TextField(
                                    decoration: InputDecoration(
                                        isDense:true,
                                        contentPadding: EdgeInsets.only(top: 11,bottom: 11,left: 10),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(color:ColorHelper().appointment_input_field_border),
                                            borderRadius: BorderRadius.all(Radius.circular(7))
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color:ColorHelper().appointment_input_field_border),
                                            borderRadius: BorderRadius.all(Radius.circular(7))
                                        )
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Email".tr,style: TextStyle(color: ColorHelper().appointment_input_field_title),),
                                  SizedBox(height: 5,),
                                  TextField(
                                    decoration: InputDecoration(
                                        isDense:true,
                                        contentPadding: EdgeInsets.only(top: 11,bottom: 11,left: 10),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(color:ColorHelper().appointment_input_field_border),
                                            borderRadius: BorderRadius.all(Radius.circular(7))
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color:ColorHelper().appointment_input_field_border),
                                            borderRadius: BorderRadius.all(Radius.circular(7))
                                        )
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Note".tr,style: TextStyle(color: ColorHelper().appointment_input_field_title),),
                                  SizedBox(height: 5,),
                                  TextField(
                                    maxLines: 8,
                                    decoration: InputDecoration(
                                        isDense:true,
                                        contentPadding: EdgeInsets.only(top: 11,bottom: 11,left: 10),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(color:ColorHelper().appointment_input_field_border),
                                            borderRadius: BorderRadius.all(Radius.circular(7))
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color:ColorHelper().appointment_input_field_border),
                                            borderRadius: BorderRadius.all(Radius.circular(7))
                                        )
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: InkWell(
                                onTap: (){
                                  _pageController.jumpToPage(6);
                                },
                                child: Container(
                                  height: 30,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      color: ColorHelper().slot_container_border_color,
                                      borderRadius: BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Center(child: Text("Send Request".tr,style: TextStyle(fontSize: 14,color: Colors.white),)),
                                ),
                              ),
                            ),
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
                                backgroundColor: Colors.transparent,
                                child: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Image.asset(ImageHelper().notification_png)),
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
                      margin: EdgeInsets.only(top: 80,left: 20,right: 20),
                      child: Container(

                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            Center(
                              child: Container(
                                height: 100,
                                decoration: BoxDecoration(
                                    color: ColorHelper().appointment_success_containter,
                                    borderRadius: BorderRadius.all(Radius.circular(5))
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(child: Text("Thank you".tr,style: TextStyle(fontSize: 18,color: Colors.white),)),
                                    SizedBox(height: 5,),
                                    Center(child: Text("Your appointment request has been received ".tr,style: TextStyle(fontSize: 14,color: Colors.white),textAlign: TextAlign.center,))
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Name : ".tr,style: TextStyle(color: ColorHelper().appointment_input_field_title),),
                                  Text("Mr. XXXXXX ",style: TextStyle(color: ColorHelper().appointment_input_field_title),),

                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Phone Number :".tr,style: TextStyle(color: ColorHelper().appointment_input_field_title),),
                                  Text("01XXXXXX",style: TextStyle(color: ColorHelper().appointment_input_field_title),),

                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Email :".tr,style: TextStyle(color: ColorHelper().appointment_input_field_title),),
                                  Text(" XXXXXXXXX@gmail.com",style: TextStyle(color: ColorHelper().appointment_input_field_title),),

                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Date :".tr,style: TextStyle(color: ColorHelper().appointment_input_field_title),),
                                  Text(" 10/12/2022 ",style: TextStyle(color: ColorHelper().appointment_input_field_title),),

                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Time Slot :".tr,style: TextStyle(color: ColorHelper().appointment_input_field_title),),
                                  Text("02:00 am - 02:30 am ",style: TextStyle(color: ColorHelper().appointment_input_field_title),),

                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Note :".tr,style: TextStyle(color: ColorHelper().appointment_input_field_title),),
                                  Expanded(
                                    child: ListView(
                                      shrinkWrap: true,
                                      children: [
                                        Text(" consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.",style: TextStyle(color: ColorHelper().appointment_input_field_title),textAlign: TextAlign.justify,),
                                      ],
                                    ),
                                  )

                                ],
                              ),
                            ),
                            SizedBox(height: 30,),
                            Center(
                              child: InkWell(
                                onTap: (){
                                  Get.offAllNamed(PageUrl().home_screen);
                                },
                                child: Container(
                                  height: 30,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      color: ColorHelper().slot_container_border_color,
                                      borderRadius: BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Center(child: Text("Back to Home".tr,style: TextStyle(fontSize: 14,color: Colors.white),)),
                                ),
                              ),
                            ),
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
