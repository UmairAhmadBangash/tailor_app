import 'package:flutter/material.dart';

import 'bar_graph.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  List<double> weeklySummary = [
    70.0,
    50.0,
    30.0,
    20.0,
    15.0,
    10.0,
    5.0,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
            height: 400,
            child: MyBarGraphScreen(
              weeklySummary: weeklySummary,
              colors1: Colors.deepPurple,
              colors2: Colors.blueGrey,
            )),
      ),
    );
  }
}
