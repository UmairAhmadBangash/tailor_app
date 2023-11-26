import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ReUsePriceConatinerDetails extends StatelessWidget {
  String text1;
  String text2;
  String text3;
  String? images;
  Icon? icons;
  Color colors;

  ReUsePriceConatinerDetails({
    Key? key, // Key parameter added
    required this.text1,
    required this.text2,
    required this.text3,
    this.images,
    this.icons,
    required this.colors,
  }) : super(key: key); // Initialize key parameter

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46.h,
      width: 104.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade200, width: 1.w)),
      child: Row(
        children: [
           SizedBox(
            width: 10.w,
          ),
          Container(
            height: 32.h,
            width: 32.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: colors,
            ),
            child: images != null
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(images!),
                  )
                : icons,
          ),
           SizedBox(
            width: 6.w,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 SizedBox(
                  height: 5.h,
                ),
                Text(
                  text1,
                  style: GoogleFonts.inter(
                      fontSize: 8.sp,
                      color: Colors.grey.shade500,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  text2,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 8.sp,
                    color: Colors.grey.shade500,
                  ),
                ),
                 SizedBox(
                  height: 3.h,
                ),
                Text(
                  text3,
                  style: GoogleFonts.inter(
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
