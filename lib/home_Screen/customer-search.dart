import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_project/Components/textfeild.dart';

import '../Components/customer_detail_component.dart';
import 'home1.dart';
import 'measurement _detail_screen.dart';

class CustomerSearch extends StatefulWidget {
  const CustomerSearch({super.key});

  @override
  State<CustomerSearch> createState() => _CustomerSearchState();
}

class _CustomerSearchState extends State<CustomerSearch> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
               SizedBox(
                height: 40.h,
              ),
              Row(
                children: [
                  SizedBox(width: 10.w,),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen1()));
                      },
                      icon:  Icon(Icons.arrow_back_ios,size: 20.w,)),
                  SizedBox(width: 80.w,),
                  Text(
                    "Customer",
                    style: GoogleFonts.openSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(width: 100.w,),
                  ImageIcon(
                    const AssetImage("images/logout.png"),
                    color: Colors.grey.shade500,
                  ),
                ],
              ),
               SizedBox(
                height: 20.h,
              ),
              UseTextFormFeild(
                controller: _controller,
                fillcolor: const Color(0xffF8F8F8),
                hintText: "Search Customers",
                prefixicons: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ImageIcon(
                    AssetImage(
                      "images/search_icon.png",
                    ),
                  ),
                ),
              ),
               SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Text(
                      "Customer",
                      style: GoogleFonts.openSans(
                          color: const Color(0xff333333),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600),
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
                              const MeasurementDetailScreen()));
                },
                child: CustomerDetailsContainer(
                  text: 'Kristin Watson',
                  textStyle: GoogleFonts.openSans(),
                  fontsize: 16.sp,
                  colors: const Color(0xff404647),
                  text2: "Serial Number#3456",
                  colors2: const Color(0xff6B7280),
                  fontsize2: 10.sp,
                  onpressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const MeasurementDetailScreen()));
                  },
                  images: "images/profile.png",
                ),
              ),

              SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const MeasurementDetailScreen()));
                },
                child: CustomerDetailsContainer(
                  text: 'Kristin Watson',
                  textStyle: GoogleFonts.openSans(),
                  fontsize: 16.sp,
                  colors: const Color(0xff404647),
                  text2: "Serial Number#3456",
                  colors2: const Color(0xff6B7280),
                  fontsize2: 10.sp,
                  onpressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const MeasurementDetailScreen()));
                  },
                  images: "images/profile.png",
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const MeasurementDetailScreen()));
                },
                child: CustomerDetailsContainer(
                  text: 'Kristin Watson',
                  textStyle: GoogleFonts.openSans(),
                  fontsize: 16.sp,
                  colors: const Color(0xff404647),
                  text2: "Serial Number#3456",
                  colors2: const Color(0xff6B7280),
                  fontsize2: 10.sp,
                  onpressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const MeasurementDetailScreen()));
                  },
                  images: "images/profile.png",
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const MeasurementDetailScreen()));
                },
                child: CustomerDetailsContainer(
                  text: 'Kristin Watson',
                  textStyle: GoogleFonts.openSans(),
                  fontsize: 16.sp,
                  colors: const Color(0xff404647),
                  text2: "Serial Number#3456",
                  colors2: const Color(0xff6B7280),
                  fontsize2: 10.sp,
                  onpressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const MeasurementDetailScreen()));
                  },
                  images: "images/profile.png",
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const MeasurementDetailScreen()));
                },
                child: CustomerDetailsContainer(
                  text: 'Kristin Watson',
                  textStyle: GoogleFonts.openSans(),
                  fontsize: 16.sp,
                  colors: const Color(0xff404647),
                  text2: "Serial Number#3456",
                  colors2: const Color(0xff6B7280),
                  fontsize2: 10.sp,
                  onpressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const MeasurementDetailScreen()));
                  },
                  images: "images/profile.png",
                ),
              ), SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const MeasurementDetailScreen()));
                },
                child: CustomerDetailsContainer(
                  text: 'Kristin Watson',
                  textStyle: GoogleFonts.openSans(),
                  fontsize: 16.sp,
                  colors: const Color(0xff404647),
                  text2: "Serial Number#3456",
                  colors2: const Color(0xff6B7280),
                  fontsize2: 10.sp,
                  onpressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const MeasurementDetailScreen()));
                  },
                  images: "images/profile.png",
                ),
              ), SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const MeasurementDetailScreen()));
                },
                child: CustomerDetailsContainer(
                  text: 'Kristin Watson',
                  textStyle: GoogleFonts.openSans(),
                  fontsize: 16.sp,
                  colors: const Color(0xff404647),
                  text2: "Serial Number#3456",
                  colors2: const Color(0xff6B7280),
                  fontsize2: 10.sp,
                  onpressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const MeasurementDetailScreen()));
                  },
                  images: "images/profile.png",
                ),
              ), SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const MeasurementDetailScreen()));
                },
                child: CustomerDetailsContainer(
                  text: 'Kristin Watson',
                  textStyle: GoogleFonts.openSans(),
                  fontsize: 16.sp,
                  colors: const Color(0xff404647),
                  text2: "Serial Number#3456",
                  colors2: const Color(0xff6B7280),
                  fontsize2: 10.sp,
                  onpressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const MeasurementDetailScreen()));
                  },
                  images: "images/profile.png",
                ),
              ), SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const MeasurementDetailScreen()));
                },
                child: CustomerDetailsContainer(
                  text: 'Kristin Watson',
                  textStyle: GoogleFonts.openSans(),
                  fontsize: 16.sp,
                  colors: const Color(0xff404647),
                  text2: "Serial Number#3456",
                  colors2: const Color(0xff6B7280),
                  fontsize2: 10.sp,
                  onpressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const MeasurementDetailScreen()));
                  },
                  images: "images/profile.png",
                ),
              ),




            ],
          ),
        ),
      ),
    );
  }
}
