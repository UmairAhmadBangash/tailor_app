import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home_Screen/add_customer-screen.dart';

class OrderDetailsConatiner extends StatefulWidget {
  const OrderDetailsConatiner({super.key});

  @override
  State<OrderDetailsConatiner> createState() => _OrderDetailsConatinerState();
}

class _OrderDetailsConatinerState extends State<OrderDetailsConatiner> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
         padding: EdgeInsets.symmetric(vertical: size.height>1000?12: 0),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xffE5E7EB)),
        ),
        child: Theme(
          data: ThemeData(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
          ),
          child: Center(
            child: ExpansionTile(
                shape: Border.all(width: 1.w, color: Colors.transparent),
                iconColor: Colors.black87,
                textColor: Colors.black87,
                leading: Container(
                     height: 55,
                     width: 55,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xff00BFE2), Color(0xff008FC9)],
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        "images/profile.png",
                      ),
                    )),
                title: Text(
                  "Kristin Watson",
                  style: GoogleFonts.openSans(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff404647)),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    "Due Date 22-03-2023",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 11.sp,
                        color: const Color(0xff6B7280)),
                  ),
                ),
                children: [
                  Column(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Started",
                                      style: GoogleFonts.openSans(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6.h,
                                    ),
                                    Text(
                                      "Status",
                                      style: GoogleFonts.openSans(
                                          color: const Color(0xff737373),
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "03-27-2023",
                                      style: GoogleFonts.openSans(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 7.h,
                                    ),
                                    Text(
                                      "Order Date",
                                      style: GoogleFonts.openSans(
                                          color: const Color(0xff737373),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10.sp),
                                    ),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "500.0",
                                      style: GoogleFonts.openSans(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12.sp),
                                    ),
                                    SizedBox(
                                      height: 7.h,
                                    ),
                                    Text(
                                      "Paid Payment",
                                      style: GoogleFonts.openSans(
                                          color: const Color(0xff737373),
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 6.w,
                                ),
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "1500",
                                      style: GoogleFonts.openSans(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 7.h,
                                    ),
                                    Text(
                                      "Total Payment",
                                      style: GoogleFonts.openSans(
                                          color: const Color(0xff737373),
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: const DottedLine(
                              direction: Axis.horizontal,
                              dashGapLength: 8,
                              dashLength: 10,
                              dashColor: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Remaining Payment",
                              style: GoogleFonts.redHatDisplay(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff737373)),
                            ),
                            Text(
                              " 1000.0",
                              style: GoogleFonts.redHatDisplay(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12.sp),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const AddCustomerScreen()));
                        },
                        child: Container(
                          height: 46.h,
                          width: 190.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(colors: [
                              Color(0xff00BFE2),
                              Color(0xff008FC9),
                            ]),
                          ),
                          child: Center(
                              child: Text(
                                "View Measurment",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
