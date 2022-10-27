// ignore_for_file: prefer_const_constructors, camel_case_types, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                  color: greenContent),
              padding: EdgeInsets.only(
                  top: deviceHeight(context) * 0.015,
                  bottom: deviceHeight(context) * 0.015),
              child: Column(children: <Widget>[
                Text("penerima subsidi",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Colors.white))),
                SizedBox(height: deviceHeight(context) * 0.005),
                Container(
                    width: deviceWidth(context) * 0.25,
                    height: deviceHeight(context) * 0.05,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(deviceWidth(context) * 0.01)),
                    child: Icon(Icons.check_rounded,
                        color: greenContent, size: 30))
              ]))),
      SizedBox(width: deviceWidth(context) * 0.05),
      Expanded(
          flex: 5,
          child: Container(
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(deviceWidth(context) * 0.01),
                  color: darkContent),
              padding: EdgeInsets.only(
                  top: deviceHeight(context) * 0.015,
                  bottom: deviceHeight(context) * 0.015),
              child: Column(children: <Widget>[
                Text("petani muda sukses",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Colors.white))),
                SizedBox(height: deviceHeight(context) * 0.005),
                Container(
                    width: deviceWidth(context) * 0.25,
                    height: deviceHeight(context) * 0.05,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(deviceWidth(context) * 0.01)),
                    child: Icon(Icons.thumb_up_outlined,
                        size: 30, color: darkContent))
              ])))
    ]);
  }
}
