import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_project/Components/containerbutton.dart';
import 'package:tailor_project/home_Screen/home1.dart';

class OrderCompleteScreen extends StatefulWidget {
  const OrderCompleteScreen({super.key});

  @override
  State<OrderCompleteScreen> createState() => _OrderCompleteScreenState();
}

class _OrderCompleteScreenState extends State<OrderCompleteScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 170.h,
              ),
              Center(
                  child: Image.asset(
                "images/order-complete-logo.png",
                width: 192.w,
                height: 189.h,
              )),
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return const LinearGradient(
                    colors: [Color(0xff00BFE2), Color(0xff008FC9)],
                  ).createShader(bounds);
                },
                child: Text(
                  "Your Order has been \n       successfully",
                  style: GoogleFonts.openSans(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 100.h,
              ),
              ContainerButton(
                text: "Submit",
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen1()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
