import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_project/home_Screen/home1.dart';

class ContainerButton extends StatelessWidget {
  String? text;
  VoidCallback? ontap;

  ContainerButton({super.key, required this.text, this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        height: 52.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          gradient: const LinearGradient(colors: [
            Color(0xff00BFE2),
            Color(0xff008FC9),
          ]),
        ),
        child: Center(
            child: Text(
          text!,
          style: GoogleFonts.openSans(
              fontSize: ScreenUtil().setSp(16),
              color: Colors.white,
              fontWeight: FontWeight.w700),
        )),
      ),
    );
  }
}
