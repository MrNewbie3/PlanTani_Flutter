import 'package:fl_chart/fl_chart.dart';
import 'package:plantani_flutter/widget/content/components/plant/dummy_data.dart';

class BarTitles {
  static SideTitles bottomTitles() => SideTitles(
      showTitles: true,
      getTitles: (double id) =>
          dummyData.data.firstWhere((value) => value.id == id.toInt()).name);
}
