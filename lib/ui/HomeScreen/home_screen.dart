import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shape_of_view/shape_of_view.dart';

import '../../utils/app_utils.dart';
import '../../utils/app_utils.dart';
import '../../utils/app_utils.dart';
import '../../utils/app_utils.dart';
import '../../utils/app_utils.dart';
import '../../utils/app_utils.dart';
import '../../utils/app_utils.dart';
import '../../utils/center_button.dart';
import '../../utils/common_textfield.dart';
import '../../utils/common_textfield.dart';
import '../../utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyView(),
      backgroundColor: Color(0xFFFAFAFA),
    );
  }

  Widget bodyView() {
    return Column(
      children: [
        Stack(
          children: [
            Image.asset(
              homeBackImg,
              height: 400.sp,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Positioned(
                top: 45.h,
                left: 20.w,
                child: Image.asset(
                  splashLogoImg,
                  height: 35.h,
                  width: 150.h,
                )),
            Positioned(
                top: 45.h,
                right: 0.w,
                child: Row(
                  children: [
                    Image.asset(
                      notificationIcon,
                      height: 24.sp,
                      width: 24.sp,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          top: 0,
                          left: 0,
                          child: ShapeOfView(
                            height: 32.sp,
                            width: 32.sp,
                            shape: PolygonShape(
                              numberOfSides: 7,
                            ),
                            child: Container(child: Icon(Icons.person)),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10.w),
                          padding: EdgeInsets.only(left: 30.w, right: 15.w),
                          color: Color(0xFFFFFFFF).withOpacity(0.2),
                          alignment: Alignment.center,
                          height: 40.h,
                          child: Text(
                            "Hi Madhu",
                            style: whiteBold14,
                          ),
                        )
                      ],
                    )
                  ],
                )),
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Welcome To ",
                            style: whiteRegular16.copyWith(fontSize: 24.sp),
                          ),
                          Text(
                            "Nestspace",
                            style: blackRegular16.copyWith(fontSize: 24.sp,
                                color: Color(0xFFFEA02F)),
                          )
                        ],
                      ),
                      SizedBox(height: 10.h,),
                      Text(
                        "Lorem Ipsum is simply dummy",
                        style: whiteRegular16.copyWith(fontSize: 18.sp),
                      ),
                      SizedBox(height: 30.h,),
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 20.w),
                          child: CommonTextfield(controller: searchController,
                            hintText: "Search by locality or landmark",
                            maxLine: 1,
                            suffixWidget: Icon(
                              Icons.search,
                              size: 22.sp,
                              color: Color(0xFFA7ADB5),
                            ),))
                    ],
                  ),
                ))
          ],
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.all(0),
            children: [
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
                elevation: 4,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r)
                ),
                child: InkWell(
                  onTap: () {
                    showRequestCallBackDialog();
                  },
                  child: Container(
                    height: 180.h,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Image.asset(
                              image1,
                              height: 105.h,
                            )),
                        Container(
                          margin: EdgeInsets.only(right: 0.4.sw,top: 25.h,left: 15.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("For Property Sellers",style: blackBold18,),
                              SizedBox(height: 15.h,),
                              Text("Post your property ad for free and reach a wider and genuine buyers in the market.",style: blackRegular14.copyWith(color: Color(0xFF898F97)),),
                              SizedBox(height: 10.h,),
                              Text("Post Free Property Ad >",style: blackBold14.copyWith(color: Color(0xFF1F6FF5)),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
                elevation: 4,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r)
                ),
                child: Container(
                  height: 180.h,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned(
                          bottom: 0,
                          left: 0,
                          child: Image.asset(
                            image2,
                            height: 105.h,
                          )),
                      Container(
                        margin: EdgeInsets.only(left: 0.4.sw,top: 25.h,right: 15.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("For Property Buyers",style: blackBold18,),
                            SizedBox(height: 15.h,),
                            Text("Tired of search? let us know your contact details, we will get in touch with you",style: blackRegular14.copyWith(color: Color(0xFF898F97)),),
                            SizedBox(height: 10.h,),
                            Text("Request Call Back >",style: blackBold14.copyWith(color: Color(0xFF1F6FF5)),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  showRequestCallBackDialog(){

    TextEditingController userNameController=TextEditingController();
    TextEditingController mobileController=TextEditingController();
    TextEditingController areaController=TextEditingController();

    var selectedBudget="Less than 20 Lacs";

    showDialog(
      context: context,
      builder: (context) {
        bool testBool = true; // This flag should be here.
        return StatefulBuilder(
          builder: (context, setDialogState) {
            return Dialog(
              insetPadding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 50.h,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xFFFAFAFA),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5.r),
                        topRight: Radius.circular(5.r),
                      ), border: Border.all(color: Color(0xFFEEEEEE), width: 1)
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 34.w,),
                        Expanded(child: Text("Request Call Back",style: blackBold16,textAlign: TextAlign.center,)),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                            child: Icon(Icons.highlight_off_outlined,size: 24,)),
                        SizedBox(width: 10.w,),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("User Name",style: blackRegular14.copyWith(color: Color(0xFF898F97)),),
                        SizedBox(height: 5.h,),
                        CommonTextfield(controller: userNameController, hintText: "User Name"),
                        SizedBox(height: 15.h,),
                        Text("Mobile No",style: blackRegular14.copyWith(color: Color(0xFF898F97)),),
                        SizedBox(height: 5.h,),
                        CommonTextfield(controller: userNameController, hintText: "Mobile No"),
                        SizedBox(height: 15.h,),
                        Text("Budget",style: blackRegular14.copyWith(color: Color(0xFF898F97)),),
                        SizedBox(height: 5.h,),
                        PopupMenuButton(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15.w),
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                color: Color(0xFFFAFAFA),
                                  borderRadius: BorderRadius.circular(5.r),
                                  border: Border.all(color: Color(0xFFEEEEEE), width: 1.5)),
                              child:Row(
                                children: [
                                  Expanded(child: Text(selectedBudget,style: blackRegular14,)),
                                  Icon(Icons.keyboard_arrow_down_outlined)
                                ],
                              ),
                            ),
                            onSelected: (value) {
                              selectedBudget=value;
                              setDialogState(() {

                              });
                            },
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                child: Container(
                                  width: 0.98.sw,
                                    child: Text("Less than 20 Lacs")),
                                value: "Less than 20 Lacs",
                              ),
                              PopupMenuItem(
                                child: Container(
                                    width: 0.98.sw,
                                    child: Text("Less than 30 Lacs")),
                                value: "Less than 30 Lacs",
                              )
                            ]
                        ),
                        SizedBox(height: 15.h,),
                        Text("Area",style: blackRegular14.copyWith(color: Color(0xFF898F97)),),
                        SizedBox(height: 5.h,),
                        CommonTextfield(controller: userNameController, hintText: "Search Area",
                          suffixWidget: Icon(
                            Icons.gps_fixed_outlined,
                            size: 22.sp,
                            color: Color(0xFFA7ADB5),
                          ),),
                        SizedBox(height: 15.h,),
                        CenterButton(ontap: (){

                        }, text: "Submit",bgColor: Color(0xFF1F6FF5),radius: 5.r,)
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
