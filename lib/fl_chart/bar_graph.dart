import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:tailor_project/fl_chart/bar_data.dart';

class MyBarGraphScreen extends StatelessWidget {
  final List weeklySummary;
  Color colors1;
  Color colors2;

  MyBarGraphScreen({
    super.key,
    required this.weeklySummary,
    required this.colors1,
    required this.colors2,
  });

  @override
  Widget build(BuildContext context) {
    BarData myBarData = BarData(
        sunAmount: weeklySummary[0],
        monAmount: weeklySummary[1],
        thurAmount: weeklySummary[2],
        wedAmount: weeklySummary[3],
        tueAmount: weeklySummary[4],
        friAmount: weeklySummary[5],
        satAmount: weeklySummary[6]);

    myBarData.initializeBarData();

    return BarChart(BarChartData(
      maxY: 100,
      minY: 0,
      gridData: FlGridData(show: false),
      borderData: FlBorderData(show: false),
      titlesData: FlTitlesData(
          show: true,
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(
              sideTitles: SideTitles(
            showTitles: false,
            getTitlesWidget: defaultGetTitle,
          ))),
      barGroups: myBarData.barData
          .map((data) => BarChartGroupData(
                x: data.x,
                barRods: [
                  BarChartRodData(
                    toY: data.y,
                    gradient: LinearGradient(
                      colors: [
                        colors1,
                        colors2,
                      ],
                    ),
                    width: 30,
                    backDrawRodData: BackgroundBarChartRodData(
                      show: true,
                      toY: 100,
                      color: Colors.grey.shade200,
                    ),
                  ),
                ],
              ))
          .toList(),
    ));
  }
}
