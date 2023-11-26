import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ShortTextFormFeild extends StatelessWidget {
  String hinttext1;
  String hinttext2;
  String? suffixtext1;
  String? suffixtext2;
  TextInputType? texttype1;
  TextInputType? texttype2;
  bool? enabled1;
  bool? enabled2;
  ShortTextFormFeild({
    super.key,
    required this.hinttext1,
    required this.hinttext2,
    this.suffixtext1,
    this.suffixtext2,
    this.texttype1,
    this.texttype2,
    this.enabled1,
    this.enabled2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         SizedBox(
          width: 20.w,
        ),
        Container(
          height: 62.h,
          width: 155.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xffF9FAFB),
          ),
          child: Center(
            child: TextFormField(
              enabled: enabled1,
              keyboardType: texttype1,
              decoration: InputDecoration(
                suffixIcon: suffixtext1 != null
                    ? Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(suffixtext1!),
                      )
                    : null,
                hintText: hinttext1,
                hintStyle: GoogleFonts.openSans(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff8F8996)),
                fillColor: const Color(0xffF9FAFB),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
         SizedBox(
          width: 20.w,
        ),
        Container(
          height: 62.h,
          width: 160.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xffF9FAFB),
          ),
          child: Center(
            child: TextFormField(
              enabled: enabled2,
              keyboardType: texttype2,
              decoration: InputDecoration(
                suffixIcon: suffixtext2 != null
                    ? Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(suffixtext2!),
                )
                    : null,
                hintText: hinttext2,
                hintStyle: GoogleFonts.openSans(
                    fontSize: 14.sp, color: const Color(0xff8F8996)),
                fillColor: const Color(0xffF9FAFB),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
