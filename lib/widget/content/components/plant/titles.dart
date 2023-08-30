// ignore_for_file: avoid_types_as_parameter_names, non_constant_identifier_names

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:plantani_flutter/widget/content/components/plant/dummy_data.dart';

class BarTitles {
  static SideTitles bottomTitles() => SideTitles(
      showTitles: true,
      getTitlesWidget: (double id, TitleMeta) => Text(
          dummyData.data.firstWhere((value) => value.id == id.toInt()).name));
}
