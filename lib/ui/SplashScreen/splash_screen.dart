import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constants.dart';
import '../LoginScreen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyView(),
      backgroundColor: Color(0xFF1F6FF5),
    );
  }

  Widget bodyView(){
    return Stack(
      children: [
        Positioned(
          bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(splashBottomImg)),
        Positioned(
          top: 0,
          bottom: 0,
            left: 60.w,
            right: 60.w,
            child: Image.asset(splashLogoImg)),
        Positioned(
          top: 230.sp,
            left: 60.w,
            right: 60.w,
            child: Image.asset(cloudImg,width: 72.w,height: 20.h,)),
        Positioned(
          top: 150.sp,
            left: -25.w,
            child: Image.asset(cloudImg,width: 72.w,height: 20.h,)),
        Positioned(
          top: 150.sp,
            right: -30.w,
            child: Image.asset(cloudImg,width: 72.w,height: 20.h,)),
      ],
    );
  }
}
