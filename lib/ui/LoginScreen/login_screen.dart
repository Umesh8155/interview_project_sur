import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/ui/MainScreen/main_screen.dart';

import '../../utils/app_utils.dart';
import '../../utils/app_utils.dart';
import '../../utils/center_button.dart';
import '../../utils/common_textfield.dart';
import '../../utils/constants.dart';
import '../HomeScreen/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = new GlobalKey();

  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyView(),
      backgroundColor: Colors.white,
    );
  }

  Widget bodyView() {
    return ListView(
      padding: EdgeInsets.all(0),
      children: [
        Image.asset(
          loginTopImg,
          height: 380.sp,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Form(
          key: formKey,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.only(left: 60.w, right: 60.w, top: 20.h),
                    child: Image.asset(logonImg)),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  style: blackRegular18.copyWith(color: Color(0xFF898F97)),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20.h,
                ),
                CommonTextfield(
                  controller: emailController,
                  hintText: "Email Address",
                ),
                SizedBox(
                  height: 20.h,
                ),
                CommonTextfield(
                  controller: passwordController,
                  hintText: "Password",
                  isSecure: obscure,
                  maxLine: 1,
                  suffixWidget: InkWell(
                      onTap: () {
                        setState(() {
                          obscure = !obscure;
                        });
                      },
                      child: Icon(
                        obscure
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        size: 22.sp,
                        color: Color(0xFFA7ADB5),
                      )),
                ),

                SizedBox(
                  height: 20.h,
                ),
                CenterButton(ontap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MainScreen()));
                }, text: "Login",bgColor: Color(0xFF1F6FF5),radius: 5.r,),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Forgot Password?",style: blackRegular16.copyWith(color: Color(0xFFFEA02F)),)
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 0.5,
                          endIndent: 10,
                        )),
                    Text(
                      "OR",
                      style: blackRegular16.copyWith(color: Colors.grey),
                    ),
                    Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 0.5,
                          indent: 10,
                        )),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      border: Border.all(color: Color(0xFFEEEEEE), width: 1.5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        googleIcon,
                        height: 30.sp,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Continue with Google",
                        style: blackRegular16.copyWith(color: Color(0xFF898F97)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don’t have an account? ",style: blackRegular16.copyWith(color: Color(0xFF898F97)),),
                    Text("Register Now",style: blackRegular16.copyWith(color: Color(0xFF3D70FF)),)
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
