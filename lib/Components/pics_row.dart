

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UseRow extends StatelessWidget {
  Color? colors;

  UseRow({super.key, this.colors});

  @override

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: size.height*0.07,
                width: size.width*0.15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: colors,
                ),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Image.asset(
                    "images/google-icon.png",
                  width: 20.w,
                    height: 21.h,
                  ),
                ),
              ),
            ),
          ],
        ),
         SizedBox(
          width: 20.w,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: size.height*0.07,
                width: size.width*0.15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: colors,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(
                    "images/facebook-icon.png",
                    width: 20.w,
                    height: 21.h,
                  ),
                ),
              ),
            ),
          ],
        ),
         SizedBox(
          width: 20.w,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: size.height*0.07,
                width: size.width*0.15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: colors,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(
                    "images/twitter-icon.png",
                    width: 20.w,
                    height: 21.h,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
