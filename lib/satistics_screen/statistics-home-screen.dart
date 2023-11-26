
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import '../Components/customer_detail_component.dart';
import '../Components/fl_chart_component.dart';
import '../Components/fl_chart_text_component.dart';
import '../Components/order-conatiner.dart';
import '../Components/price_details-component.dart';
import '../Components/statistics_container-component.dart';
import '../fl_chart/bar_graph.dart';
import '../home_Screen/bottom_navigation_bar_screen.dart';

class StatisticsHomeScreen extends StatefulWidget {
  const StatisticsHomeScreen({super.key});

  @override
  State<StatisticsHomeScreen> createState() => _StatisticsHomeScreenState();
}

class _StatisticsHomeScreenState extends State<StatisticsHomeScreen> {
  bool isSelected = false;

  List<double> weeklySummary = [
    70.0,
    50.0,
    80.0,
    20.0,
    55.0,
    60.0,
    43.0,
  ];
  String statisticsSelected = "Weekly";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Row(
                  children: [
                     SizedBox(
                      height: 120.h,
                    ),
                    InkWell(
                        onTap: () {},
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          BottomNavigationBarScreen()));
                            },
                            child: const Icon(Icons.arrow_back_ios_new_sharp,size: 20,))),
                     SizedBox(
                      width: 90.w,
                    ),
                    Text(
                      "Statistics",
                      style: GoogleFonts.openSans(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff463D3D)),
                    ),
                  ],
                ),
              ),
               SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReUsePriceConatinerDetails(
                      text1: 'Total',
                      text2: 'Remaining',
                      text3: '\$1.123.47',
                      images: "images/money-send-white-logo.png",
                      colors: const Color(0xff0585CE),
                    ),
                    ReUsePriceConatinerDetails(
                      text1: 'Total',
                      text2: 'Remaining',
                      text3: '\$1.123.47',
                      icons: const Icon(
                        Icons.arrow_downward_rounded,
                        color: Colors.white,
                      ),
                      colors: Colors.green,
                    ),
                    ReUsePriceConatinerDetails(
                      text1: 'Total',
                      text2: 'Remaining',
                      text3: '\$1.123.47',
                      icons: const Icon(
                        Icons.arrow_downward_rounded,
                        color: Colors.white,
                      ),
                      colors: const Color(0xffFF324B),
                    ),
                  ],
                ),
              ),
               SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Statistics",
                      style: GoogleFonts.roboto(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff6B7280),
                      ),
                    ),
                    Container(
                      width: 110.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(54),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xff9DCEFF),
                              Color(0xff92A3FD),
                            ],
                          ),
                          border: Border.all(color: Colors.transparent)),
                      child: Stack(
                        children: [
                          Row(
                            children: [
                               SizedBox(
                                width: 10.w,
                              ),
                              Center(
                                  child: Text(
                                statisticsSelected,
                                style: const TextStyle(color: Colors.white),
                              )),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    isSelected = !isSelected;
                                  });
                                },
                                icon: const Icon(
                                    Icons.keyboard_arrow_down_rounded),
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              if (isSelected)
                Padding(
                  padding:  EdgeInsets.only(left: 170).w,
                  child: SizedBox(
                    height: 100.h,
                    width: 100.w,
                    child: Column(
                      children: [
                         SizedBox(
                          height: 20.h,
                        ),
                        InkWell(
                            onTap: () {
                              setState(() {
                                statisticsSelected = "Weekly";
                              });
                            },
                            child: const Text("Weekly")),
                         SizedBox(
                          height: 10.h,
                        ),
                        InkWell(
                            onTap: () {
                              setState(() {
                                statisticsSelected = "Monthly";
                              });
                            },
                            child: Text("Monthly")),
                         SizedBox(
                          height: 10.h,
                        ),
                        InkWell(
                            onTap: () {
                              setState(() {
                                statisticsSelected = "Year";
                              });
                            },
                            child: const Text("Year")),
                      ],
                    ),
                  ),
                ),
               SizedBox(
                height: 40.h,
              ),
              Center(
                  child: SizedBox(
                      height: 145.h,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: MyBarGraphScreen(
                          weeklySummary: weeklySummary ?? [],
                          colors1: const Color(0xff92A3FD),
                          colors2: const Color(0xff9DCEFF),
                        ),
                      ))),
              SizedBox(
                height: 50.h,
                width: 330.w,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ReUseTextChart(
                        text: 'Sun',
                      ),
                      ReUseTextChart(
                        text: 'Mon',
                      ),
                      ReUseTextChart(
                        text: 'Tue',
                      ),
                      ReUseTextChart(
                        text: 'Wed',
                      ),
                      ReUseTextChart(
                        text: 'Thu',
                      ),
                      ReUseTextChart(
                        text: 'Fri',
                      ),
                      ReUseTextChart(
                        text: 'Sat',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              Row(
                children: [
                   SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "All Transaction",
                    style: GoogleFonts.roboto(
                        fontSize: 16.sp,
                        color: const Color(0xff6B7280),
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
               SizedBox(
                height: 30.h,
              ),
              ReUseStaticContainer(
                text1: "Bessis Cooper",
                fontSize1: 16.sp,
                colors1: const Color(0xff404647),
                text2: "21 March 2022",
                fontSize2: 11.sp,
                colors2: const Color(0xff6B7280),
                text3: "Completed",
                fontSize3: 11.sp,
                colors3: const Color(0xff13FF00),
                text4: "\$120.00",
                fontSize4: 12.16.sp,
                colors4: const Color(0xff19DD0B),
                images: 'images/ticket-logo.png',
              ),
               SizedBox(
                height: 24.h,
              ),
              ReUseStaticContainer(
                text1: "Bessis Cooper",
                fontSize1: 16.sp,
                colors1: const Color(0xff404647),
                text2: "21 March 2022",
                fontSize2: 11.sp,
                colors2: const Color(0xff6B7280),
                text3: "Remaining",
                fontSize3: 11.sp,
                colors3: const Color(0xffDD0B0B),
                text4: "\$120.00",
                fontSize4: 11.16.sp,
                colors4: const Color(0xffDD0B0B),
                images: 'images/ticket-logo.png',
              ),
               SizedBox(
                height: 30.h,
              ),
              ReUseStaticContainer(
                text1: "Bessis Cooper",
                fontSize1: 16.sp,
                colors1: const Color(0xff404647),
                text2: "21 March 2022",
                fontSize2: 11.sp,
                colors2: const Color(0xff6B7280),
                text4: "\$120.00",
                fontSize4: 11.sp,
                colors4: const Color(0xffDD0B0B),
                images: 'images/ticket-logo.png',
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
