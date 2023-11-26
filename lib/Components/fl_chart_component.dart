import 'package:flutter/material.dart';

class RrUseChartConatiner extends StatelessWidget {
  double width;
  double height;
  Gradient gradient;
  Color colors1;
  Color colors2;

  RrUseChartConatiner({
    super.key,
    required this.height,
    required this.width,
    required this.gradient,
    required this.colors1,
    required this.colors2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.grey.shade200),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                colors: [
                  colors1,
                  colors2,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
