import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../satistics_screen/statistics-home-screen.dart';
import '../notification-component.dart';
import '../profile_screen/profile_screen.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProfileScreen()));
                        },
                        icon:  Icon(Icons.arrow_back_ios_new_rounded,size: 20,)),
                     SizedBox(
                      width: 80.w,
                    ),
                    Text(
                      "Notification",
                      style: GoogleFonts.openSans(
                          fontSize: 20.sp, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
               SizedBox(
                height: 50.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:30),
                child: Row(
                  children: [
                    Text(
                      "Today",
                      style: GoogleFonts.roboto(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff6B7280)),
                    ),
                  ],
                ),
              ),
               SizedBox(
                height: 30.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StatisticsHomeScreen()));
                },
                child: ReUseNotificationConatiner(
                  text: 'Complete Order',
                  text2: 'Loyal user rewards!',
                  text3: '5m ago',
                  images: 'images/notification-order-logo.png',
                ),
              ),
               SizedBox(
                height: 24.h,
              ),
              ReUseNotificationConatiner(
                text: 'Money Transfer',
                text2: 'You have successfully sent money to Maria of...',
                text3: '25m ago',
                images: 'images/money-send.png',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        "This Week",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w700,
                            fontSize: 16.sp, color: const Color(0xff6B7280)),
                      ),
                    ),
                     SizedBox(
                      height: 80.h,
                    ),
                  ],
                ),
              ),
              ReUseNotificationConatiner(
                text: 'Payment Notification',
                text2: 'Successfully paid!',
                text3: 'Mar 20',
                images: 'images/bill-icon-logo.png',
              ),
               SizedBox(
                height: 24.sp,
              ),
              ReUseNotificationConatiner(
                text: 'Complete Order',
                text2: 'Loyal user rewards!',
                text3: '5m ago',
                images: 'images/notification-order-logo.png',
              ),
               SizedBox(
                height: 30.h,
              ),
              ReUseNotificationConatiner(
                text: 'Complete Order',
                text2: 'Loyal user rewards!',
                text3: '5m ago',
                images: 'images/notification-order-logo.png',
              ),
               SizedBox(
                height: 24.h,
              ),
              ReUseNotificationConatiner(
                text: 'Payment Notification',
                text2: 'Successfully paid!',
                text3: 'Mar 20',
                images: 'images/bill-icon-logo.png',
              ),
               SizedBox(
                height: 24.h,
              ),
              ReUseNotificationConatiner(
                text: 'Money Transfer',
                text2: 'You have successfully sent money to Maria of...',
                text3: '25m ago',
                images: 'images/money-send.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
