import 'package:flutter/material.dart';
import 'package:plantani_flutter/widget/content/components/color_responsive.dart';
import 'package:plantani_flutter/widget/content/components/plant/bar_widget.dart';

class bar_chart extends StatelessWidget {
  const bar_chart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(
            top: deviceHeight(context) * 0.05,
            right: deviceWidth(context) * 0.075,
            left: deviceWidth(context) * 0.075),
        child: BarChartWidgetData(),
      ),
    );
  }
}
