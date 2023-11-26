import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_project/home_Screen/home1.dart';

import '../notification_screen/notification-screen.dart';
import '../profile-component.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                      icon: const Icon(Icons.arrow_back_ios_new,size: 20,)),
                  SizedBox(width: 95.w,),
                  Text(
                    "Profile",
                    style: GoogleFonts.openSans(
                        fontSize: 20.sp, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 120.w,),
                  Image.asset(
                    "images/pin-logo.png",
                    width: 19.w,
                    height: 21.h,
                  ),
                ],
              ),
               SizedBox(
                height: 30.h,
              ),
              Container(
                height: 100.h,
                width: 100.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                  border: Border.all(color: Colors.white, width: 10.w),
                ),
                child: const CircleAvatar(
                  backgroundImage: AssetImage("images/profile-logo-pic.png"),
                ),
              ),
               SizedBox(
                height: 10.h,
              ),
              Text(
                "Haseeb Qureshi",
                style: GoogleFonts.roboto(
                    fontSize: 20.sp,
                    color: const Color(0xff1D3A70),
                    fontWeight: FontWeight.w700),
              ),
               SizedBox(
                height: 5.h,
              ),
              Text(
                "qureshihaseeb1234@gmail.com",
                style: GoogleFonts.roboto(
                  fontSize: 12.sp,
                  color: const Color(0xff6B7280),
                  fontWeight: FontWeight.w400,
                ),
              ),
               SizedBox(
                height: 50.h,
              ),
              ReUseProfileDetails(
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotificationScreen()),
                  );
                },
                images: 'images/account-info-logo.png',
                text: 'Account Info',
                fontsize: 14.sp,
                colors: const Color(0xff515556),
              ),
               SizedBox(
                height: 24.h,
              ),
              ReUseProfileDetails(
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotificationScreen()),
                  );
                },
                images: 'images/order-history-logo.png',
                text: 'Order History',
                fontsize: 14.sp,
                colors: const Color(0xff515556),
              ),
               SizedBox(
                height: 24.h,
              ),
              ReUseProfileDetails(
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotificationScreen()),
                  );
                },
                images: 'images/language-logo.png',
                text: 'Language',
                fontsize: 14.sp,
                colors: const Color(0xff515556),
              ),
               SizedBox(
                height: 24.h,
              ),
              ReUseProfileDetails(
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotificationScreen()),
                  );
                },
                images: 'images/notification-logo.png',
                text: 'Notification',
                fontsize: 14.sp,
                colors: const Color(0xff515556),
              ),
               SizedBox(
                height: 24.h,
              ),
              ReUseProfileDetails(
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotificationScreen()),
                  );
                },
                images: 'images/general-setting-logo.png',
                text: 'General Setting',
                fontsize: 14.sp,
                colors: const Color(0xff515556),
              ),
               SizedBox(
                height: 24.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
