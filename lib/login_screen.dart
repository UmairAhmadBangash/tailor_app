import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_project/Components/containerbutton.dart';
import 'package:tailor_project/Components/pics_row.dart';
import 'package:tailor_project/Components/textfeild.dart';
import 'package:tailor_project/home_Screen/home1.dart';
import 'package:tailor_project/rejistered_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'forget-screen.dart';
import 'home_Screen/bottom_navigation_bar_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isSelected = true;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    ScreenUtil.init(context, designSize: const Size(375, 812));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.height*0.08,
                ),
                Center(
                    child: Image.asset(
                  "images/masheenlogo.png",
                )),
                SizedBox(
                  height: size.height*0.03,
                ),
                Text(
                  "Login To Your Account",
                  style: GoogleFonts.openSans(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height:size.height*0.03,
                ),
                UseTextFormFeild(
                  obsecure: false,
                  fillcolor: const Color(0xffF9FAFB),
                  hintText: 'Email Address',
                  prefixicons: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset(
                      "images/email-logo.png",
                      scale: 3,
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(15),
                ),
                UseTextFormFeild(
                  obsecure: true,
                  isSuffix: true,
                  fillcolor: const Color(0xffF9FAFB),
                  hintText: "Confirm Password",
                  prefixicons: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      "images/lock-logo.png",
                      scale: 2.5,
                    ),
                  ),
                  sufixicons: Icon(_obscureText
                      ? Icons.visibility_outlined
                      : Icons.visibility_off),
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(10),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 27),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                isSelected = !isSelected;
                              });
                            },
                            child: Container(
                              height: 15.h,
                              width: 15.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: isSelected
                                    ? null
                                    : Border.all(
                                        width: 1.w,
                                        color: const Color(0xff8F8996)),
                                gradient: isSelected
                                    ? const LinearGradient(
                                        end: Alignment.centerRight,
                                        colors: [
                                            Color(0xff00BFE2),
                                            Color(0xff008FC9)
                                          ])
                                    : null,
                              ),
                              child: const Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 11,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(7),
                          ),
                          Text(
                            "Remember me",
                            style: TextStyle(
                                color: const Color(0xff8F8996),
                                fontSize: ScreenUtil().setSp(11),
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return const LinearGradient(
                            colors: [Color(0xff00BFE2), Color(0xff008FC9)],
                          ).createShader(bounds);
                        },
                        child: Padding(
                          padding:
                              const EdgeInsets.only(right:30),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ForgetPasswordScreen()));
                            },
                            child: Text(
                              "Forgot Password?",
                              style: GoogleFonts.openSans(
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: ScreenUtil().setSp(11),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(40),
                ),
                ContainerButton(
                  text: "Login",
                  ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BottomNavigationBarScreen(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(40),
                ),
                Padding(
                  padding: EdgeInsets.only(right: ScreenUtil().setWidth(30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: ScreenUtil().setWidth(35),
                      ),
                      Expanded(
                        child: Container(
                          width: ScreenUtil().setWidth(120),
                          color: const Color(0xffE5E7EB),
                          height: ScreenUtil().setHeight(1),
                        ),
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(10),
                      ),
                      Center(
                        child: Text(
                          "OR",
                          style: GoogleFonts.josefinSans(
                              fontSize: 12.sp,
                              color: const Color(0xff8F8996)),
                        ),
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(10),
                      ),
                      Expanded(
                        child: Container(
                          width: ScreenUtil().setWidth(140),
                          color: const Color(0xffE5E7EB),
                          height: ScreenUtil().setHeight(1),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(30),
                ),
                UseRow(
                  colors: const Color(0xffF9F9FC),
                ),
                 SizedBox(
                  height: 15.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RejisteredScreen()));
                  },
                  child: ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return const LinearGradient(
                        colors: [Color(0xff00BFE2), Color(0xff008FC9)],
                      ).createShader(bounds);
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.only(right: ScreenUtil().setWidth(30)),
                      child: Padding(
                        padding:
                            EdgeInsets.only(left: ScreenUtil().setWidth(35)),
                        child: Container(
                          height: 50.h,
                          margin: EdgeInsets.symmetric(horizontal: 25),
                          width: double.infinity,
                          child: Center(
                            child: Text(
                              "I don’t have account? Sign Up",
                              style: GoogleFonts.josefinSans(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: ScreenUtil().setSp(14),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
