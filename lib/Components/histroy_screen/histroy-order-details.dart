import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../order-conatiner.dart';
import 'histroy_screen.dart';

class HistroyOrderDetailsScreen extends StatefulWidget {
  const HistroyOrderDetailsScreen({super.key});

  @override
  State<HistroyOrderDetailsScreen> createState() =>
      _HistroyOrderDetailsScreenState();
}

class _HistroyOrderDetailsScreenState extends State<HistroyOrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
               SizedBox(
                height: 50.h,
              ),
              Row(
                children: [
                  SizedBox(width: 10.w,),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HistroyScreen()));
                      },
                      icon: const Icon(Icons.arrow_back_ios_new,size: 20,)),
                  SizedBox(width: 75.w,),
                  Text("Order History",
                      style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w600, fontSize: 20.sp)),
                  SizedBox(width: 70.w,),
                  const ImageIcon(AssetImage("images/security-logo.png"),
                      color: Color(0xff828A89)),
                ],
              ),
               SizedBox(
                height: 30.h,
              ),
              ReUseOrderConatiner(
                text: 'Cancel',
                fontsize: 10.sp,
                colors: const Color(0xffFD3737),
                text1: 'Bessie Cooper',
              ),
               SizedBox(
                height: 15.h,
              ),
              ReUseOrderConatiner(
                text: 'Completed',
                fontsize: 10.sp,
                colors: const Color(0xff0C8A7B),
                text1: 'Ronald Richards',
              ),
               SizedBox(
                height: 15.h,
              ),
              ReUseOrderConatiner(
                text: 'Cancel',
                fontsize: 10.sp,
                colors: const Color(0xffFD3737),
                text1: 'Albert Flores',
              ),
               SizedBox(
                height: 15.h,
              ),
              ReUseOrderConatiner(
                text: 'Completed',
                fontsize: 10.sp,
                colors: const Color(0xff0C8A7B),
                text1: 'Jerome Bell',
              ),
               SizedBox(
                height: 15.h,
              ),
              ReUseOrderConatiner(
                text: 'Pending',
                fontsize: 10.sp,
                colors: const Color(0xffDBB15F),
                text1: 'Marvin McKinney',
              ),
               SizedBox(
                height: 15.h,
              ),
              ReUseOrderConatiner(
                text: 'Pending',
                fontsize: 10.sp,
                colors: const Color(0xffDBB15F),
                text1: 'Ralph Edwards',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
