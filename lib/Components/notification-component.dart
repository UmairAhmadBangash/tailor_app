import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ReUseNotificationConatiner extends StatelessWidget {
  String text;
  String text2;
  String text3;
  String images;

  ReUseNotificationConatiner({
    super.key,
    required this.text,
    required this.text2,
    required this.text3,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              height: 48.h,
              width: 48.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xffF9FAFB)),
              child: Image.asset(images),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: GoogleFonts.roboto(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff595959)),
                ),
                 SizedBox(
                  height: 7.h,
                ),
                Text(
                  text2,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      color: const Color(0xff6B7280),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          // Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 30, left: 10),
            child: Text(
              text3,
              style: GoogleFonts.roboto(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff6B7280)),
            ),
          ),
        ],
      ),
    );
  }
}
