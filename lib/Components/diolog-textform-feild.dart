import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DiologTextFormFeild extends StatelessWidget {
  String hinttext1;
  Icon? suffixicon;

  DiologTextFormFeild({
    super.key,
    required this.hinttext1,
    this.suffixicon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         SizedBox(
          width: 24.w,
        ),
        Container(
          height: 55.h,
          width: 247.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xffF9FAFB),
          ),
          child: Center(
            child: TextFormField(
              decoration: InputDecoration(
                suffixIcon: suffixicon != null ? suffixicon : null,
                hintText: hinttext1,
                hintStyle: GoogleFonts.openSans(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff8F8996)),
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
