import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:plantani_flutter/widget/content/components/plant/dummy_data.dart';
import 'package:plantani_flutter/widget/content/components/plant/titles.dart';

class BarChartWidgetData extends StatelessWidget {
  const BarChartWidgetData({Key? key}) : super(key: key);
  final double barWidth = 22;
  @override
  Widget build(BuildContext context) => BarChart(BarChartData(
      alignment: BarChartAlignment.center,
      borderData: FlBorderData(
        show: false,
      ),
      titlesData: FlTitlesData(
          bottomTitles: AxisTitles(sideTitles: BarTitles.bottomTitles()),
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false))),
      maxY: 12,
      minY: 0,
      groupsSpace: 20,
      barTouchData: BarTouchData(enabled: true),
      barGroups: dummyData.data
          .map((data) => BarChartGroupData(x: data.id, barRods: [
                BarChartRodData(
                    width: 30,
                    color: data.color,
                    borderRadius: BorderRadius.circular(1),
                    toY: data.y)
              ]))
          .toList()));
}
