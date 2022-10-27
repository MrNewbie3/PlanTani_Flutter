// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantani_flutter/widget/content/components/color_responsive.dart';

class history_section extends StatelessWidget {
  const history_section({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
          flex: 2,
          child: Container(
              height: deviceHeight(context) * 0.125,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.25),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0)
                  ],
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(deviceWidth(context) * 0.02)),
              child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                    Text("Pengairan",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500))),
                    Text("4",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600)))
                  ])))),
      SizedBox(width: deviceWidth(context) * 0.04),
      Expanded(
        flex: 2,
        child: Container(
            height: deviceHeight(context) * 0.125,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(.25),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0)
                ],
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(deviceWidth(context) * 0.02)),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Pemupukan",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500))),
                    Text("2",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600)))
                  ]),
            )),
      )
    ]);
  }
}
