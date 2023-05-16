import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../data/chart_data.dart';

class BarChartContent extends StatelessWidget {
  const BarChartContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        titlesData: FlTitlesData(
          leftTitles: SideTitles(showTitles: false),
          bottomTitles: SideTitles(
            showTitles: true,
            getTextStyles: (value, _) => const TextStyle(
              fontSize: 12,
            ),
            getTitles: (value) {
              switch (value.toInt()) {
                case 1:
                  return 'lun';
                case 2:
                  return 'Mar';
                case 3:
                  return 'Mer';
                case 4:
                  return 'Jeudi';
                case 5:
                  return 'Ven';
                case 6:
                  return 'Sam';
                case 7:
                  return 'Dim';
              }
              return '';
            },
          ),
        ),
        borderData: FlBorderData(
            border: Border.all(color: Colors.transparent, width: 0)),
        alignment: BarChartAlignment.spaceEvenly,
        maxY: 16,
        barGroups: barChartGroupData,
      ),
    );
  }
}
