import 'package:flutter/material.dart';
import 'package:plantani_flutter/widget/content/components/plant/bar_data.dart';

class dummyData {
  static int interval = 5;
  static List<data_bar> data = [
    data_bar(id: 1, y: 12, color: Colors.purple, name: "Jan"),
    data_bar(id: 2, y: 6, color: Colors.red, name: "Feb"),
    data_bar(id: 3, y: 9, color: Colors.yellow, name: "Mar"),
    data_bar(id: 4, y: 12, color: Colors.green, name: "Mei"),
    data_bar(id: 5, y: 7, color: Colors.blue, name: "Jun"),
    data_bar(id: 6, y: 5, color: Colors.orange, name: "Jul")
  ];
}
