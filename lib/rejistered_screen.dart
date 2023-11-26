import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_project/Components/pics_row.dart';
import 'package:tailor_project/Components/textfeild.dart';

import 'Components/containerbutton.dart';
import 'create_proflie.dart';
import 'login_screen.dart';

class RejisteredScreen extends StatefulWidget {
  const RejisteredScreen({super.key});

  @override
  State<RejisteredScreen> createState() => _RejisteredScreenState();
}

class _RejisteredScreenState extends State<RejisteredScreen> {
  bool isChecked = false;
  bool _obscureText1 = true;
  bool _obscureText2 = true;
  bool isSelected = true;
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 812));
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              Center(
                child: Image.asset(
                  "images/masheenlogo.png",
                  width: 172.w,
                  height: 142.h,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Registered Now.",
                style: GoogleFonts.openSans(
                    fontSize: 20.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 30.h,
              ),
              UseTextFormFeild(
                controller: _controller,
                fillcolor: const Color(0xffF9FAFB),
                prefixicons: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Image.asset(
                    "images/email-logo.png",
                    width: 14,
                    height: 12,
                  ),
                ),
                hintText: "Email Address",
              ),
              SizedBox(
                height: 15.h,
              ),
              UseTextFormFeild(
                controller: _controller,
                isSuffix: true,
                fillcolor: const Color(0xffF9FAFB),
                obsecure: _obscureText1,
                prefixicons: Image.asset(
                  'images/lock-logo.png',
                  scale: 3,
                ),
                hintText: "Password",
                sufixicons: const Icon(Icons.remove_red_eye_outlined),
                iconsbutton: InkWell(
                    onTap: () {
                      setState(() {
                        _obscureText1 = !_obscureText1;
                      });
                    },
                    child: Icon(_obscureText1
                        ? Icons.visibility_outlined
                        : Icons.visibility_off)),
              ),
              SizedBox(
                height: 15.h,
              ),
              UseTextFormFeild(
                controller: _controller,
                isSuffix: true,
                fillcolor: const Color(0xffF9FAFB),
                obsecure: _obscureText2,
                prefixicons: Image.asset(
                  'images/lock-logo.png',
                  scale: 3,
                ),
                sufixicons: const Icon(Icons.remove_red_eye_outlined),
                hintText: "Confirm Password",
                iconsbutton: InkWell(
                    onTap: () {
                      setState(() {
                        _obscureText2 = !_obscureText2;
                      });
                    },
                    child: Icon(_obscureText2
                        ? Icons.visibility_outlined
                        : Icons.visibility_off)),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
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
                                  width: 1.w, color: const Color(0xff8F8996)),
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
                      width: 7.w,
                    ),
                    Text(
                      "Terms & Condition & privacy policy",
                      style: GoogleFonts.openSans(
                          color: const Color(0xff8F8996), fontSize: 11.sp),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              ContainerButton(
                text: "Create Account",
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateProfileScreen()));
                },
              ),
              SizedBox(
                height: 40.h,
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
                            fontSize: 14, color: const Color(0xff8F8996)),
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
                height: 40.h,
              ),
              UseRow(
                colors: const Color(0xffF9F9FC),
              ),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                child: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return const LinearGradient(
                      colors: [
                        Color(0xff00BFE2),
                        Color(0xff008FC9)
                      ], // Set your gradient colors
                    ).createShader(bounds);
                  },
                  child: SizedBox(
                    height: 50.h,
                    width: double.infinity,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have in account! Login",
                            style: GoogleFonts.josefinSans(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              // Text color (should be contrasting)
                              fontSize: 14.sp, // Set your desired font size
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
