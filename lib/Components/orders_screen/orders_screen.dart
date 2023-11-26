
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_project/Components/textfeild.dart';
import 'package:tailor_project/home_Screen/home1.dart';
import 'order-search.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  TextEditingController _controller = TextEditingController();

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
                  SizedBox(
                    width: 5.w,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen1()));
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        size: 17.w,
                      )),
                  SizedBox(width: 120.w,),
                  Text("Order",
                      style: GoogleFonts.openSans(
                          fontSize: 20.sp, fontWeight: FontWeight.w600)),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              UseTextFormFeild(
                controller: _controller,
                fillcolor: const Color(0xffF8F8F8),
                hintText: "Search Customers",
                prefixicons: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(
                    "images/search_icon.png",
                    height: 27.h,
                    width: 27.w,
                  ),
                ),
              ),
               SizedBox(
                height: 80.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OrderScreenSearch()),
                  );
                },
                child: SizedBox(
                  height: 350.h,
                  width: 351.w,
                  child: Image.asset("images/order-logo.png"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
