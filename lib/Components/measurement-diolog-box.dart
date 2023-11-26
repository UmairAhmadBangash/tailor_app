import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_project/Components/textfeild.dart';

import 'diolog-textform-feild.dart';

class MeasurementDiologBox extends StatefulWidget {
  const MeasurementDiologBox({super.key});

  @override
  State<MeasurementDiologBox> createState() => _MeasurementDiologBoxState();
}

class _MeasurementDiologBoxState extends State<MeasurementDiologBox> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title:  Padding(
        padding: EdgeInsets.only(left: 5),
        child: Text('Order Detail',style: GoogleFonts.openSans(fontWeight:FontWeight.w600,fontSize: 18.sp ),),
      ),
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      content: SizedBox(
        height: 380.h,
        width: 275.w,
        child: Column(
          children: [
             SizedBox(
              height: 15.h,
            ),
            DiologTextFormFeild(
              hinttext1: 'Total payment',
            ),
             SizedBox(
              height: 10.h,
            ),
            DiologTextFormFeild(
              hinttext1: 'Paid payment(optional)',
            ),
             SizedBox(
              height: 10.h,
            ),
            DiologTextFormFeild(
              hinttext1: 'Suit Quantity',
            ),
             SizedBox(
              height: 10.h,
            ),
            DiologTextFormFeild(
              hinttext1: 'Delivery Date',
              suffixicon: const Icon(
                Icons.calendar_today_rounded,
                color: Color(0xffCDD2DF),
              ),
            ),
             SizedBox(
              height: 35.h,
            ),
            Row(
              children: [
                SizedBox(width: 24.w,),
                Container(
                  height: 46.h,
                  width: 110.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xff008FC9),
                          Color(0xff00BFE2),
                        ],
                      )),
                  child: Center(
                      child: Text(
                    "Start",
                    style: GoogleFonts.openSans(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  )),
                ),
                SizedBox(width: 10.w,),
                Container(
                  height: 46.h,
                  width: 110.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xffF9FAFB),
                  ),
                  child: Center(
                      child: Text(
                    "Cancel",
                    style: GoogleFonts.openSans(
                        color: const Color(0xffD4CECE),
                        fontWeight: FontWeight.w700),
                  )),
                ),
              ],
            ),
             SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}
