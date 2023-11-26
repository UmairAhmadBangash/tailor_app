import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ReUseStaticContainer extends StatelessWidget {
  String images;
  String text1;
  String text2;
  String? text3;
  String text4;
  double fontSize4;
  Color colors4;
  double fontSize1;
  Color? colors3;
  double fontSize2;
  Color colors2;
  double? fontSize3;
  Color colors1;

  ReUseStaticContainer({
    super.key,
    required this.images,
    required this.text1,
    required this.text2,
    this.text3,
    required this.text4,
    required this.fontSize4,
    required this.colors4,
    required this.fontSize1,
    this.colors3,
    required this.fontSize2,
    required this.colors2,
    this.fontSize3,
    required this.colors1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 77.h,
      width: 335.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade200, width: 1.w),
      ),
      child: Row(
        children: [
           SizedBox(
            width: 10.w,
          ),
          Container(
            height: 55.h,
            width: 55.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              gradient: const LinearGradient(
                colors: [
                  Color(0xff00BFE2),
                  Color(0xff008FC9),
                ],
              ),
            ),
            child: Image.asset(images),
          ),
           SizedBox(
            width: 15.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style: GoogleFonts.openSans(
                    fontSize: fontSize1,
                    color: colors1,
                    fontWeight: FontWeight.w400),
              ),
               SizedBox(
                height: 5.h,
              ),
              Text(
                text2,
                style: GoogleFonts.roboto(
                    fontSize: fontSize2,
                    color: colors2,
                    fontWeight: FontWeight.w400),
              ),
               SizedBox(
                height: 5.h,
              ),
              if (text3 != null && fontSize3 != null && colors3 != null)
                Text(
                  text3!,
                  style:
                      GoogleFonts.roboto(fontSize: fontSize3!, color: colors3!),
                ),
            ],
          ),
           SizedBox(
            width: 60.w,
          ),
          Text(
            text4,
            style: GoogleFonts.nunito(
                fontSize: fontSize4,
                color: colors4,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
