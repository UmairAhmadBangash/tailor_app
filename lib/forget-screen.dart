import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_project/Components/containerbutton.dart';
import 'package:tailor_project/verify-code-screen.dart';

import 'Components/textfeild.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
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
              height: 100.h,
            ),
            Center(child: Image.asset("images/masheenlogo.png")),
            SizedBox(
              height: 30.h,
            ),
            Text(
              "Forget Password",
              style:
                  GoogleFonts.openSans(fontSize: 20.sp, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 30.h,
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Email Address",
                filled: true,
                fillColor:  Color(0xffF9FAFB),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Image.asset("images/email-logo.png",height: 12.h,width: 14.w,),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 25.h),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
             SizedBox(
              height: 40.h,
            ),
            ContainerButton(
              text: "Verify",
              ontap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VerifyCodeScreen()));
              },
            )
          ],
        ),
      ),
    ));
  }
}
