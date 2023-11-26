import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home_Screen/add_customer-screen.dart';

class PicContiner extends StatelessWidget {
  Color? colors1;
  String? image;
  VoidCallback onTap;

  final List<Color>? colors2;

  PicContiner({
    super.key,
    this.image,
    this.colors1,
    required this.onTap,

    this.colors2,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            height: 71.h,
            width: 78.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17).w,
              color: colors1,
              gradient: const LinearGradient(
                colors: [
                  Color(0xff00BFE2),
                  Color(0xff008FC9),
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(17.0).w,
              child: Image.asset(
                image!,
                height: 18.h,
                width: 18.w,
                color: Colors.white,
              ),
            ),
          ),
        ),
         SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
