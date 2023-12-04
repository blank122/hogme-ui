import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LineChartContent extends StatelessWidget {
  const LineChartContent({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(),
    );
  }
}
