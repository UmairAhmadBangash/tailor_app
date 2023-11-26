import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileRowReUse extends StatefulWidget {
  const ProfileRowReUse({super.key});

  @override
  State<ProfileRowReUse> createState() => _ProfileRowReUseState();
}

class _ProfileRowReUseState extends State<ProfileRowReUse> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Row(children: [
           CircleAvatar(
             radius: 30,
             backgroundColor: Colors.white,
             child: CircleAvatar(
               radius: 25,
               backgroundImage: AssetImage("images/profile-logo-pic.png"),
             ),
           ),
           SizedBox(
             width: 12.w,
           ),
           Column(
             children: [
               Text(
                 "Haseeb Qureshi",
                 style: GoogleFonts.nunito(
                     color:  Color(0xff000000),
                     fontSize: 16.sp,
                     fontWeight: FontWeight.w600),
               ),

               Row(
                 children: [
                   Image.asset(
                     "images/location-logo.png",
                     height: 20.h,
                     width: 20.w,
                   ),
                   SizedBox(
                     width: 8.w,
                   ),
                   Text(
                     "Wallace, Australia",
                     style: GoogleFonts.openSans(
                         fontSize: 11.sp,
                         fontWeight: FontWeight.w400,
                         color: const Color(0xff8F8996)),
                   ),
                 ],
               ),
             ],
           ),
         ],),

          Row(
            children: [
              Image.asset(
                "images/mask-icon.png",
                width: 24.w,
                height: 24.h,
                color: const Color(0xff8F8996),
              ),
              SizedBox(
                width: 25.w,
              ),
              Image.asset(
                "images/notification-bing.png",
                height: 24.h,
                width: 24.w,
                color: const Color(0xff8F8996),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
