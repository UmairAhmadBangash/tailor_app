import 'package:flutter/material.dart';
import 'package:tailor_project/forget-screen.dart';
import 'package:tailor_project/payment_details.dart';
import 'package:tailor_project/rejistered_screen.dart';
import 'package:tailor_project/satistics_screen/statistics-home-screen.dart';
import 'package:tailor_project/splash_screen.dart';
import 'package:tailor_project/re-use-radio-component.dart';
import 'package:tailor_project/verify-code-screen.dart';
import 'Components/histroy_screen/histroy-order-details.dart';
import 'Components/histroy_screen/histroy_screen.dart';
import 'Components/notification_screen/notification-screen.dart';
import 'Components/orders_screen/order-complete-screen.dart';
import 'Components/orders_screen/order-search-deatils.dart';
import 'Components/orders_screen/order-search.dart';
import 'Components/orders_screen/orders_screen.dart';
import 'Components/profile_screen/profile_screen.dart';
import 'create_proflie.dart';
import 'home_Screen/add_customer-screen.dart';
import 'home_Screen/bottom_navigation_bar_screen.dart';
import 'home_Screen/customer-search.dart';
import 'home_Screen/home1.dart';
import 'home_Screen/measurement _detail_screen.dart';
import 'login_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 812));
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen());
  }
}
