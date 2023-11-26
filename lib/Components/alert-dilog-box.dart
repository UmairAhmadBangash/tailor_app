import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_project/Components/textfeild.dart';

import '../dilog-box-radio-button.dart';
import '../re-use-radio-component.dart';
import 'diolog-textform-feild.dart';

class AlertDiologBox extends StatefulWidget {
  const AlertDiologBox({super.key});

  @override
  State<AlertDiologBox> createState() => _AlertDiologBoxState();
}

class _AlertDiologBoxState extends State<AlertDiologBox> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Padding(
        padding: EdgeInsets.only(left: 5),
        child: Text(
          'Add Custom Field',
          style: GoogleFonts.openSans(
              fontWeight: FontWeight.w600, fontSize: 18.sp),
        ),
      ),
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      content: SizedBox(
        height: 267.h,
        width: 296.w,
        child: Column(
          children: [
            SizedBox(
              height: 15.h,
            ),
            DiologTextFormFeild(
              hinttext1: ' Please Enter Text',
            ),
            Container(
              height: 100.h,
              child: DiologBoxReUseRadioBotton(
                text1: 'Text field',
                text2: 'CheckBox',
              ),
            ),
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
                "Ok",
                style: GoogleFonts.openSans(
                    color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700),
              )),
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
