import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ReUseOrderConatiner extends StatelessWidget {
  String text;
  double fontsize;
  Color colors;
  String text1;

  ReUseOrderConatiner({
    super.key,
    required this.text,
    required this.fontsize,
    required this.colors,
    required this.text1,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 333.w,
        height: 77.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color(0xffE5E7EB), width: 2.w),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 50.h,
                width: 50.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: const LinearGradient(colors: [
                    Color(0xff00BFE2),
                    Color(0xff008FC9),
                  ]),
                ),
                child: Image.asset(
                  "images/ticket-logo.png",
                  height: 22.h,
                  width: 22.w,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text1,
                    style: GoogleFonts.openSans(
                        fontSize: 15.9.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff404647)),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Suit ",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 10.93.sp,
                            color: const Color(0xff6B7280)),
                      ),
                      Text(
                        "Quantity: 3 ",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 10.93.sp,
                            color: const Color(0xff6B7280)),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Status: ",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 10.93.sp,
                            color: const Color(0xff6B7280)),
                      ),
                      Text(
                        text,
                        style: GoogleFonts.openSans(
                            fontSize: fontsize,
                            color: colors,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
