import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const MaterialColor primaryMaterialColor = const MaterialColor(
  0xFFFF2727,
  const <int, Color>{
    50: const Color(0xFF1F6FF5),
    100: const Color(0xFF1F6FF5),
    200: const Color(0xFF1F6FF5),
    300: const Color(0xFF1F6FF5),
    400: const Color(0xFF1F6FF5),
    500: const Color(0xFF1F6FF5),
    600: const Color(0xFF1F6FF5),
    700: const Color(0xFF1F6FF5),
    800: const Color(0xFF1F6FF5),
    900: const Color(0xFF1F6FF5),
  },
);

const primaryColor = Color(0xFF1F6FF5);


var blackRegular14 = TextStyle(
  color: Colors.black,
  fontSize: 14.sp,
);

TextStyle blackBold14 = TextStyle(
    color: Colors.black, fontSize: 14.sp, fontWeight: FontWeight.w500);

var blackRegular16 = TextStyle(
  color: Colors.black,
  fontSize: 16.sp,
);

var blackRegular18 = TextStyle(
  color: Colors.black,
  fontSize: 18.sp,
);

var blackBold16 = TextStyle(
    color: Colors.black, fontSize: 16.sp, fontWeight: FontWeight.w500);

var blackBold18 = TextStyle(
    color: Colors.black, fontSize: 18.sp, fontWeight: FontWeight.w500);

var hintTextStyle = TextStyle(
  color: Colors.grey,
  fontSize: 14.sp,
);

var whiteRegular14 = TextStyle(
  color: Colors.white,
  fontSize: 14.sp,
);

var whiteBold14 = TextStyle(
    color: Colors.white, fontSize: 14.sp, fontWeight: FontWeight.w500);

var whiteRegular16 = TextStyle(
  color: Colors.white,
  fontSize: 16.sp,
);

var whiteBold16 = TextStyle(
    color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.w500);



Future<bool> check() async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.mobile) {
    return true;
  } else if (connectivityResult == ConnectivityResult.wifi) {
    return true;
  }
  return false;
}

showToast(String text) {
  Fluttertoast.showToast(
      msg: text, toastLength: Toast.LENGTH_LONG, fontSize: 16);
}