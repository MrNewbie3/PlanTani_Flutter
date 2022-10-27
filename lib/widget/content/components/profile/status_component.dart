// ignore_for_file: prefer_const_constructors, camel_case_types, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:plantani_flutter/widget/content/components/color_responsive.dart';

class status_component extends StatelessWidget {
  const status_component({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
          flex: 5,
          child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(deviceWidth(context) * 0.01),
                color: greenContent,
              ),
              padding: EdgeInsets.only(
                  top: deviceHeight(context) * 0.025,
                  bottom: deviceHeight(context) * 0.025),
              child: Column(children: <Widget>[
                Text("penerima subsidi"),
                Container(child: Icon(Icons.abc))
              ]))),
      SizedBox(width: 10),
      Expanded(
          flex: 5,
          child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(deviceWidth(context) * 0.01),
                color: greenContent,
              ),
              padding: EdgeInsets.only(
                  top: deviceHeight(context) * 0.025,
                  bottom: deviceHeight(context) * 0.025),
              child: Column(children: <Widget>[
                Text("petani muda sukses"),
                Container(child: Icon(Icons.abc))
              ])))
    ]);
  }
}
