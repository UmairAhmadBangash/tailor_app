import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextUse extends StatelessWidget {
   TextUse({super.key,
    required this.text1,
     required this.text2,
     required this.text3,
  });

  String text1;
   String text2;
   String text3;



  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Text(
            text1,
            style: GoogleFonts.openSans(
                fontSize: 13.sp,
                color: const Color(0xff8F8996),
                fontWeight: FontWeight.w400),
          ),

          Padding(
            padding:  EdgeInsets.only(right: 30),
            child: Text(
              text2,
              style: GoogleFonts.openSans(
                  fontSize: 13.sp,
                  color: const Color(0xff8F8996),
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Text(
              text3,
              style: GoogleFonts.openSans(
                  fontSize: 13.sp,
                  color: const Color(0xff8F8996),
                  fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
