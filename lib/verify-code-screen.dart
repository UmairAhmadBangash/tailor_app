import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class VerifyCodeScreen extends StatefulWidget {
  const VerifyCodeScreen({super.key});

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
  late var defaultPinTheme;
  late var focusedPinTheme;
  late var submittedPinTheme;

  @override
  void initState() {
    defaultPinTheme = PinTheme(
      width: 56.w,
      height: 56.h,
      textStyle: TextStyle(
          fontSize: 20.sp,
          color: Color(0xffF9FAFB),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        // border: Border.all(color:  Color(0xffF9FAFB)),
        borderRadius: BorderRadius.circular(20),
          color:  Color(0xffF9FAFB)
      ),
    );

    focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: const Color(0xff00BFE2)),
      borderRadius: BorderRadius.circular(8),
    );

    submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color(0xff00BFE2),
      ),
    );
    super.initState();
  }

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
              height: 90.h,
            ),
            Center(child: Image.asset("images/masheenlogo.png")),
            SizedBox(
              height: 50.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 25.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Verify it’s you",
                      style: GoogleFonts.openSans(
                          fontSize: 20.sp, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    RichText(
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: "We send a code to ( ",
                          style: GoogleFonts.openSans(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff6B7280)),
                        ),
                        TextSpan(
                          text: "*****@mail.com",
                          style: GoogleFonts.openSans(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff00BFE2)),
                        ),
                        TextSpan(
                          text: " ).",
                          style: GoogleFonts.openSans(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff6B7280)),
                        ),
                      ]),
                    ),
                    Text(
                      " Enter it here to verify your identity",
                      style: GoogleFonts.openSans(
                          fontSize: 13.5.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff6B7280)),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Pinput(
              length: 5,
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              submittedPinTheme: submittedPinTheme,
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              showCursor: true,
              onCompleted: (pin) => print(pin),
            ),
            SizedBox(
              height: 30.h,
            ),
            ShaderMask(
                shaderCallback: (Rect bounds) {
                  return const LinearGradient(
                    colors: [
                      Color(0xff00BFE2),
                      Color(0xff008FC9)
                    ], // Set your gradient colors
                  ).createShader(bounds);
                },
                child: InkWell(
                  child: Text(
                    "Resend Code",
                    style: GoogleFonts.nunito(
                      fontSize: 16.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )),
          ],
        ),
      ),
    ));
  }
}
