import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../customer_detail_component.dart';
import '../textfeild.dart';
import 'order-search-deatils.dart';
import 'orders_screen.dart';

class OrderScreenSearch extends StatefulWidget {
  const OrderScreenSearch({super.key});

  @override
  State<OrderScreenSearch> createState() => _OrderScreenSearchState();
}

class _OrderScreenSearchState extends State<OrderScreenSearch> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30.h,),
              Row(
                children: [
                  SizedBox(width: 10.w,),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OrdersScreen()));
                      },
                      icon:  Icon(Icons.arrow_back_ios_new_sharp,size: 16.w,)),
                  SizedBox(width: 80.w,),
                  Text("Order",
                      style: GoogleFonts.openSans(
                          fontSize: 20.sp, fontWeight: FontWeight.w600)),
                ],
              ),
              SizedBox(height: 10.h,),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: UseTextFormFeild(
                  controller: _controller,
                  fillcolor: const Color(0xffF8F8F8),
                  hintText: "Search Customers",
                  prefixicons: Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Image.asset(
                      "images/search_icon.png",
                      height: 27.h,
                      width: 27.w,
                    ),
                  ),
                ),
              ),
               SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Text(
                      "Total Orders:5",
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
              ),
               SizedBox(
                height: 10.h,
              ),
              CustomerDetailsContainer(
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OrderDetailScreen()));
                },
                text: 'Kristin Watson',
                textStyle: const TextStyle(),
                fontsize: 16.sp,
                colors: const Color(0xff404647),
                text2: "Due Date 22-03-2023",
                colors2: const Color(0xff6B7280),
                fontsize2: 10.sp,
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderDetailScreen(),
                    ),
                  );
                },
                images: "images/shop-logo.png",
              ),

              SizedBox(
                height: 10.h,
              ),
              CustomerDetailsContainer(
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OrderDetailScreen()));
                },
                text: 'Kristin Watson',
                textStyle: const TextStyle(),
                fontsize: 16.sp,
                colors: const Color(0xff404647),
                text2: "Due Date 22-03-2023",
                colors2: const Color(0xff6B7280),
                fontsize2: 10.sp,
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderDetailScreen(),
                    ),
                  );
                },
                images: "images/shop-logo.png",
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomerDetailsContainer(
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OrderDetailScreen()));
                },
                text: 'Kristin Watson',
                textStyle: const TextStyle(),
                fontsize: 16.sp,
                colors: const Color(0xff404647),
                text2: "Due Date 22-03-2023",
                colors2: const Color(0xff6B7280),
                fontsize2: 10.sp,
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderDetailScreen(),
                    ),
                  );
                },
                images: "images/shop-logo.png",
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomerDetailsContainer(
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OrderDetailScreen()));
                },
                text: 'Kristin Watson',
                textStyle: const TextStyle(),
                fontsize: 16.sp,
                colors: const Color(0xff404647),
                text2: "Due Date 22-03-2023",
                colors2: const Color(0xff6B7280),
                fontsize2: 10.sp,
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderDetailScreen(),
                    ),
                  );
                },
                images: "images/shop-logo.png",
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomerDetailsContainer(
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OrderDetailScreen()));
                },
                text: 'Kristin Watson',
                textStyle: const TextStyle(),
                fontsize: 16.sp,
                colors: const Color(0xff404647),
                text2: "Due Date 22-03-2023",
                colors2: const Color(0xff6B7280),
                fontsize2: 10.sp,
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderDetailScreen(),
                    ),
                  );
                },
                images: "images/shop-logo.png",
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomerDetailsContainer(
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OrderDetailScreen()));
                },
                text: 'Kristin Watson',
                textStyle: const TextStyle(),
                fontsize: 16.sp,
                colors: const Color(0xff404647),
                text2: "Due Date 22-03-2023",
                colors2: const Color(0xff6B7280),
                fontsize2: 10.sp,
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderDetailScreen(),
                    ),
                  );
                },
                images: "images/shop-logo.png",
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomerDetailsContainer(
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OrderDetailScreen()));
                },
                text: 'Kristin Watson',
                textStyle: const TextStyle(),
                fontsize: 16.sp,
                colors: const Color(0xff404647),
                text2: "Due Date 22-03-2023",
                colors2: const Color(0xff6B7280),
                fontsize2: 10.sp,
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderDetailScreen(),
                    ),
                  );
                },
                images: "images/shop-logo.png",
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomerDetailsContainer(
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OrderDetailScreen()));
                },
                text: 'Kristin Watson',
                textStyle: const TextStyle(),
                fontsize: 16.sp,
                colors: const Color(0xff404647),
                text2: "Due Date 22-03-2023",
                colors2: const Color(0xff6B7280),
                fontsize2: 10.sp,
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderDetailScreen(),
                    ),
                  );
                },
                images: "images/shop-logo.png",
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomerDetailsContainer(
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OrderDetailScreen()));
                },
                text: 'Kristin Watson',
                textStyle: const TextStyle(),
                fontsize: 16.sp,
                colors: const Color(0xff404647),
                text2: "Due Date 22-03-2023",
                colors2: const Color(0xff6B7280),
                fontsize2: 10.sp,
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderDetailScreen(),
                    ),
                  );
                },
                images: "images/shop-logo.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
