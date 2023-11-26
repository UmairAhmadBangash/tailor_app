import 'package:tailor_project/fl_chart/individual_bar.dart';

class BarData {
  final double sunAmount;
  final double monAmount;
  final double tueAmount;
  final double wedAmount;
  final double thurAmount;
  final double friAmount;
  final double satAmount;

  BarData(
      {required this.sunAmount,
      required this.monAmount,
      required this.thurAmount,
      required this.wedAmount,
      required this.tueAmount,
      required this.friAmount,
      required this.satAmount});

  List<IndividualBar> barData = [];

  void initializeBarData() {
    barData = [
      IndividualBar(x: 1, y: sunAmount),
      IndividualBar(x: 2, y: monAmount),
      IndividualBar(x: 3, y: thurAmount),
      IndividualBar(x: 4, y: wedAmount),
      IndividualBar(x: 5, y: tueAmount),
      IndividualBar(x: 6, y: friAmount),
      IndividualBar(x: 7, y: satAmount),
    ];
  }
}
