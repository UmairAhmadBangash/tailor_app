import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerDetailsContainer extends StatelessWidget {
  String text;
  TextStyle textStyle;
  double fontsize;
  Color colors;
  String text2;
  Color colors2;
  double fontsize2;
  VoidCallback? onpressed;
  String images;
  VoidCallback? ontap;

  CustomerDetailsContainer({
    super.key,
    required this.text,
    this.ontap,
    required this.textStyle,
    required this.fontsize,
    required this.colors,
    required this.text2,
    required this.colors2,
    required this.fontsize2,
    this.onpressed,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 77.h,
        width: 333.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: const Color(0xffE5E7EB),
            width: 1.w,
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                  height: 55.h,
                  width: 55.w,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xff00BFE2), Color(0xff008FC9)],
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset(images),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      text,
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w500,
                        fontSize: fontsize,
                        color: colors,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40, top: 5),
                    child: Text(
                      text2,
                      style: GoogleFonts.openSans(
                          fontSize: fontsize2,
                          color: colors2,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            IconButton(
                onPressed: onpressed,
                icon:  Icon(
                  Icons.arrow_forward_ios,size: 15.w,
                  color: Color(0xff00BFE2),
                ))
          ],
        ),
      ),
    );
  }
}
