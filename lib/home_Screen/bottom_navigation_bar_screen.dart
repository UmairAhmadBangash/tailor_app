import 'package:flutter/material.dart';

import '../Components/histroy_screen/histroy_screen.dart';
import '../Components/orders_screen/orders_screen.dart';
import '../Components/profile_screen/profile_screen.dart';
import 'home1.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _currentIndex = 0;
  final pages = [
    const HomeScreen1(),
    const OrdersScreen(),
    const HistroyScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedIconTheme: IconThemeData(color: Colors.grey), // Customize the unselected icon color
          selectedIconTheme: IconThemeData(color: Colors.blue),
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index; // Update the selected index
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  "images/home-logo.png",
                  width: 50,
                  height: 40,
                  color: _currentIndex ==0 ? Color(0xff00BFE2):Colors.grey,

                ),
                label: ""),
            BottomNavigationBarItem(
              icon: Image.asset(
                "images/sms-logo.png",
                width: 25,
                height: 40,
                color: _currentIndex ==1 ? Color(0xff00BFE2):Colors.grey,

              ),
              label: "",
            ),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "images/timer-logo.png",
                  width: 25,
                  height: 40,
                  color: _currentIndex ==2 ? Color(0xff00BFE2):Colors.grey,

                ),
                label: ""),
            BottomNavigationBarItem(
              icon: Image.asset(
                "images/profile-logo.png",
                width: 50,
                height: 40,
                color: _currentIndex ==3 ? Color(0xff00BFE2):Colors.grey,
              ),

              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
