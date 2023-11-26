import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../home_Screen/home1.dart';
import '../alert-dilog-box.dart';
import '../containerbutton.dart';
import '../measurement-diolog-box.dart';
import '../textfeild.dart';

class Tab2 extends StatefulWidget {
  const Tab2({super.key});

  @override
  State<Tab2> createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  List<Widget> list = [];
  int selectContainer = 0;
  TextEditingController controller = TextEditingController();
  bool isChecked = false;
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
        floatingActionButton: Container(
          height: 50.h,
          width: 50.w,
          decoration: BoxDecoration(
           shape: BoxShape.circle,
            border: Border.all(width: 3.w,color: Colors.grey)
          ),
          child: FloatingActionButton(
              backgroundColor: const Color(0xff008FC9),
              focusColor: const Color(0xff00BFE2),
              child: Center(
                child: const Icon(
                  Icons.add,
                  size: 35,
                ),
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return StatefulBuilder(
                          builder: (BuildContext context, set) {
                            return const AlertDiologBox();
                          });
                    });
              }),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text(
                        "Searle Number”  ",
                        style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                            color: const Color(0xff00BFE2)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text(
                        "8452",
                        style: GoogleFonts.openSans(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
               SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Text(
                      "Customer",
                      style: GoogleFonts.openSans(
                          fontSize: 18.sp, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
               SizedBox(
                height: 30.h,
              ),
              UseTextFormFeild(
                controller: _controller,
                fillcolor: const Color(0xffF9FAFB),
                hintText: "Name",
                prefixicons: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Image.asset(
                    "images/email-logo.png",
                    width: 14.w,
                    height: 14.h,
                  ),
                ),
              ),
               SizedBox(
                height: 20.h,
              ),
              UseTextFormFeild(
                controller: _controller,
                fillcolor: const Color(0xffF9FAFB),
                hintText: "Contact Number",
                prefixicons: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Image.asset(
                    "images/call-logo.png",
                    width: 14.w,
                    height: 14.h,
                  ),
                ),
              ),
               SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Text(
                      "Measurement",
                      style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w600, fontSize: 18.sp),
                    ),
                  ],
                ),
              ),
               SizedBox(
                height: 30.h,
              ),
              if (selectContainer == 1)
                Column(
                  children: [
                    UseTextFormFeild(
                      controller: _controller, hintText: 'snj',
                    ),
                  ],
                ),
              if (selectContainer == 2)
                Column(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked == value;
                        });
                      },
                    ),
                  ],
                ),
               SizedBox(
                height: 40.h,
              ),
              ContainerButton(
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen1()));
                },
                text: 'submit',
              ),
               SizedBox(
                height: 50.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
