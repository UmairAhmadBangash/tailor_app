import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ReUseRadioBotton extends StatefulWidget {
  String text1;
  String text2;

   ReUseRadioBotton({super.key,required this.text1,required this.text2});

  @override
  State<ReUseRadioBotton> createState() => _ReUseRadioBottonState();
}

class _ReUseRadioBottonState extends State<ReUseRadioBotton> {
  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 333.w,
              child: Container(
                height: 70.h,
                decoration: BoxDecoration(
                  color: Color(0xffF9FAFB),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    Container(
                      width: 120.w,
                      child: Text(
                        widget.text1,
                        style: GoogleFonts.openSans(
                            color: Color(0xff8F8996),
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isSelected = 0;
                        });
                      },
                      child: Container(
                        height: 16.h,
                        width: 16.w,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 2.w,
                                color: isSelected == 0
                                    ? Color(0xff00BFE2)
                                    : Color(0xff8F8996)),
                            color: Colors.transparent,
                            shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: Container(
                            height: 5.h,
                            width: 5.w,
                            decoration: BoxDecoration(
                              color: isSelected == 0
                                  ? Color(0xff00BFE2)
                                  : Colors.transparent,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                    ),
                  SizedBox(width: 25.w,),
                    Container(
                      width: 100.w,
                      child: Text(
                        widget.text2,
                        style: GoogleFonts.openSans(
                            color: Color(0xff8F8996),
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp),
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isSelected = 1;
                        });
                      },
                      child: Container(
                        height: 16.h,
                        width: 16.w,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 2.w,
                                color: isSelected == 1
                                    ? Color(0xff00BFE2)
                                    : Color(0xff8F8996)),
                            color: Colors.transparent,
                            shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: Container(
                            height: 5.h,
                            width: 5.w,
                            decoration: BoxDecoration(
                              color: isSelected == 1
                                  ? Color(0xff00BFE2)
                                  : Colors.transparent,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
