import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dotted_line/dotted_line.dart';
import '../containerbutton.dart';
import '../customer_detail_component.dart';
import '../re-use-row.dart';
import 'order-complete-screen.dart';
import 'order-search.dart';

class OrderDetailScreen extends StatefulWidget {
  OrderDetailScreen({super.key});

  @override
  State<OrderDetailScreen> createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const OrderScreenSearch()));
                      },
                      icon:  Icon(Icons.arrow_back_ios_new,size: 20.w,)),
                  SizedBox(width: 70.w,),
                  Text("Order Details",
                      style: GoogleFonts.openSans(
                          fontSize: 20.sp, fontWeight: FontWeight.w600)),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Container(
                height: 420.h,
                width: 333.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border:
                        Border.all(color: const Color(0xffE5E7EB), width: 2.w)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            height: 50.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xff00BFE2),
                                  Color(0xff008FC9),
                                ],
                              ),
                            ),
                            child: Image.asset("images/shop-logo.png"),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Kristin Watson",
                              style: GoogleFonts.openSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                                color: const Color(0xff404647),
                              ),
                            ),
                            Text(
                              "Due Date 22-03-2023",
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10.sp,
                                  color: const Color(0xff6B7280)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 23),
                      child: Row(
                        children: [
                          Text("Order Detail:",
                              style: GoogleFonts.openSans(
                                  fontSize: 12.sp,
                                  color: const Color(0xff1F1F1F),
                                  fontWeight: FontWeight.w700)),
                        ],
                      ),
                    ),
                     SizedBox(
                      height: 15.h,
                    ),
                    ReUseRow(
                      text: 'Suits Quantity',
                      text2: '3',
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    ReUseRow(
                      text: 'Order Date',
                      text2: '27-02-2023',
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    ReUseRow(
                      text: 'Due Date',
                      text2: '29-02-2023',
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    ReUseRow(
                      text: 'Total Payment',
                      text2: '1500',
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    ReUseRow(
                      text: 'Paid Payment',
                      text2: '500.0',
                    ),
                     SizedBox(
                      height: 20.h,
                    ),
                    const DottedLine(
                      direction: Axis.horizontal,
                      alignment: WrapAlignment.center,
                      lineLength: double.infinity,
                      lineThickness: 2,
                      dashGapLength: 10,
                      dashLength: 10,
                      dashColor: Color(0xff6969694d),
                    ),
                     SizedBox(
                      height: 20.h,
                    ),
                    ReUseRow(text: "Remaining Payment", text2: "1000.0"),
                     SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 50.h,
                              width: 120.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  color: const Color(0xffF9FAFB)),
                              child:  Center(
                                  child: Text(
                                "Cancel",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Color(0xffD4CECE),
                                    fontWeight: FontWeight.w700),
                              )),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const OrderCompleteScreen()),
                              );
                            },
                            child: Container(
                              height: 50.h,
                              width: 120.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                gradient: const LinearGradient(colors: [
                                  Color(0xff00BFE2),
                                  Color(0xff008FC9),
                                ]),
                              ),
                              child:  Center(
                                  child: Text(
                                "Complete",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
