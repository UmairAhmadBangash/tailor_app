import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_Screen/home1.dart';

class PaymentDetailsScreen extends StatefulWidget {
  const PaymentDetailsScreen({super.key});

  @override
  State<PaymentDetailsScreen> createState() => _PaymentDetailsScreenState();
}

class _PaymentDetailsScreenState extends State<PaymentDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Row(
                children: [
                   SizedBox(
                    height: 120.h,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen1()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: const Icon(Icons.arrow_back_ios_new_sharp,size: 20,),
                      )),
                   SizedBox(
                    width: 80.h,
                  ),
                  Text(
                    "Payment Detail",
                    style: GoogleFonts.openSans(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff1B1E28)),
                  ),
                ],
              ),
               SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/card-stack-logo.png",
                    width: 300,
                    height: 300,
                  ),
                ],
              ),
               SizedBox(
                height: 60.h,
              ),
              Stack(
                children: [
                  Container(
                    height: 80.h,
                    width: 330.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Remaining",
                                style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.w400, fontSize: 14.sp),
                              ),
                               SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                "Rs.360 ",
                                style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp,
                                    color: const Color(0xff0D6EFD)),
                              ),
                            ],
                          ),
                        ),
                        VerticalDivider(
                          thickness: 2,
                          color: Colors.grey.shade100,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Paid Amount",
                              style: GoogleFonts.openSans(
                                  fontSize: 14.sp, fontWeight: FontWeight.w400),
                            ),
                             SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              "Rs.360 ",
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                  color: const Color(0xff0D6EFD)),
                            ),
                          ],
                        ),
                        VerticalDivider(
                          thickness: 2,
                          color: Colors.grey.shade100,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Total Amount",
                                style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.w400, fontSize: 14.sp),
                              ),
                               SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                "Rs.360 ",
                                style: GoogleFonts.openSans(
                                    fontSize: 12.sp,
                                    color: const Color(0xff0D6EFD),
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
