import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartSample extends StatelessWidget {
    final List<BarChartGroupData> data = [
    BarChartGroupData(
      x: 0,
      barRods: [
        BarChartRodData(y: 3, colors: [Colors.blue]),
      ],
    ),
    BarChartGroupData(
      x: 1,
      barRods: [
        BarChartRodData(y: 1, colors: [Colors.blue]),
      ],
    ),
    BarChartGroupData(
      x: 2,
      barRods: [
        BarChartRodData(y: 4, colors: [Colors.blue]),
      ],
    ),
    BarChartGroupData(
      x: 3,
      barRods: [
        BarChartRodData(y: 6, colors: [Colors.blue]),
      ],
    ),
    BarChartGroupData(
      x: 4,
      barRods: [
        BarChartRodData(y: 8, colors: [Colors.blue]),
      ],
    ),
    BarChartGroupData(
      x: 5,
      barRods: [
        BarChartRodData(y: 4, colors: [Colors.blue]),
      ],
    ),
    BarChartGroupData(
      x: 6,
      barRods: [
        BarChartRodData(y: 7, colors: [Colors.blue]),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: BarChart(
        BarChartData(
          alignment: BarChartAlignment.spaceAround,
          maxY: 10,
          barTouchData: BarTouchData(enabled: false),
          titlesData: FlTitlesData(
            show: true,
            bottomTitles: SideTitles(
              showTitles: true,
              margin: 16,
              getTitles: (double value) {
                switch (value.toInt()) {
                  case 0:
                    return 'Lun';
                  case 1:
                    return 'Mar';
                  case 2:
                    return 'Mer';
                  case 3:
                    return 'Jeu';
                  case 4:
                    return 'Ven';
                  case 5:
                    return 'Sam';
                  case 6:
                    return 'Dim';
                  default:
                    return '';
                }
              },
            ),
            leftTitles: SideTitles(
              showTitles: true,
              getTitles: (double value) {
                return value.toString();
              },
              margin: 16,
              reservedSize: 40,
            ),
          ),
          gridData: FlGridData(show: false),
          borderData: FlBorderData(show: true),
          barGroups: data,
        ),
      ),
    );
  }
}