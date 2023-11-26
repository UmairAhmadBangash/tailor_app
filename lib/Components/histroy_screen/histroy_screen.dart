import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_project/home_Screen/home1.dart';

import 'histroy-order-details.dart';

class HistroyScreen extends StatefulWidget {
  const HistroyScreen({super.key});

  @override
  State<HistroyScreen> createState() => _HistroyScreenState();
}

class _HistroyScreenState extends State<HistroyScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
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
                    icon: const Icon(Icons.arrow_back_ios,size: 20,)),
                SizedBox(width: 60.w,),
                Text("Order History",
                    style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w600, fontSize: 20.sp)),
                SizedBox(width: 75.w,),
                const ImageIcon(
                  AssetImage(
                    "images/security-logo.png",
                  ),
                  color: Color(0xff828A89),
                ),
              ],
            ),
            const SizedBox(
              height: 200,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const HistroyOrderDetailsScreen()));
              },
              child: SizedBox(
                height: 290.h,
                width: 230.w,
                child: Image.asset(
                  "images/shop-boy.png",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
