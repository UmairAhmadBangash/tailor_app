import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ReUseRow extends StatefulWidget {
  String text;
  String text2;

  ReUseRow({super.key, required this.text, required this.text2});

  @override
  State<ReUseRow> createState() => _ReUseRowState();
}

class _ReUseRowState extends State<ReUseRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.text,
            style: GoogleFonts.openSans(
                fontSize: 11.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff737373)),
          ),
          Text(
            widget.text2,
            style: GoogleFonts.openSans(
                fontWeight: FontWeight.w700, fontSize: 12.sp),
          ),
        ],
      ),
    );
  }
}
