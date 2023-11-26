import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ReUseProfileDetails extends StatelessWidget {
  String images;
  String text;
  double fontsize;
  Color colors;
  VoidCallback? ontap;

  ReUseProfileDetails({
    super.key,
    required this.images,
    required this.text,
    required this.fontsize,
    required this.colors,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: GestureDetector(
        onTap: ontap,
        child: Row(
          children: [
            Container(
              height: 40.h,
              width: 40.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset(
                images,
              ),
            ),
             SizedBox(
              width: 20.w,
            ),
            Text(
              text,
              style: GoogleFonts.openSans(
                  fontSize: fontsize,
                  fontWeight: FontWeight.w600,
                  color: colors),
            ),
            const Spacer(),
            Image.asset(
              "images/forword-arrow.png",
              width: 22.w,
              height: 22.h,
            ),
          ],
        ),
      ),
    );
  }
}
