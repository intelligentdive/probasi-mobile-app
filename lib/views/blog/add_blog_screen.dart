
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:probashi/res/colors/ColorHelper.dart';
import 'package:probashi/res/images/ImageHelper.dart';

class AddBlogScreen extends StatefulWidget {
  const AddBlogScreen({Key? key}) : super(key: key);

  @override
  State<AddBlogScreen> createState() => AddBlogScreenState();
}

class AddBlogScreenState extends State<AddBlogScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.only(left: 30,right: 30,top: 50,bottom: 40),
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
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

                    ],
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    onTap: ()async{
                      var pic_image=ImagePicker().pickImage(source: ImageSource.gallery);
                    },
                    child: Container(
                      height: 200,
                      width: Get.width,
                      margin: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(ImageHelper().blog_image_picker_background)
                        )
                      ),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(ImageHelper().blog_image_add_icon,scale: 3),
                          SizedBox(height: 10,),
                          Text("Upload Photo From Gallery".tr,style: TextStyle(color: Color(0xff979595)),)
                        ],
                      ),
                    ),
                  ),

                  Container(
                    height: 70,
                    padding: EdgeInsets.only(left: 15,top: 10,right: 5),
                    decoration: BoxDecoration(
                      color: ColorHelper().blog_input_field_background,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Blog Title"

                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.only(left: 15,top: 10,right: 5),
                    decoration: BoxDecoration(
                      color: ColorHelper().blog_input_field_background,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      maxLines: 6,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Blog Title"

                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 70,
                    padding: EdgeInsets.only(left: 15,top: 10,right: 5),
                    decoration: BoxDecoration(
                      color: ColorHelper().blog_input_field_background,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Blog Title"

                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [

                      Expanded(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: InkWell(
                            onTap: (){
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              height: 30,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: ColorHelper().blog_page_button_color,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Center(child: Text("Cancel".tr,style: TextStyle(fontSize: 14,color: Colors.white),)),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.topRight,
                          child: InkWell(
                            onTap: (){

                            },
                            child: Container(
                              height: 30,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: ColorHelper().blog_page_button_color,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Center(child: Text("Post".tr,style: TextStyle(fontSize: 14,color: Colors.white),)),
                            ),
                          ),
                        ),
                      )
                    ],
                  )

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
