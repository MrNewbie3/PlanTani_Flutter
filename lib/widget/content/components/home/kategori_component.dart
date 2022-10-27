// ignore_for_file: unused_import, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantani_flutter/widget/content/components/color_responsive.dart';

class kategori_components extends StatelessWidget {
  const kategori_components({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Kategori",
          style: GoogleFonts.poppins(
              textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600))),
      SizedBox(height: deviceHeight(context) * 0.025),
      Row(children: <Widget>[
        Expanded(
            flex: 2,
            child: Column(
              children: [
                Container(
                    width: 59,
                    height: 49,
                    decoration: BoxDecoration(
                        color: greenContent,
                        borderRadius: BorderRadius.circular(
                            deviceHeight(context) * 0.01)),
                    child: Image.asset("assets/image/pupuk_1.png", scale: 2)),
                SizedBox(height: deviceHeight(context) * 0.02),
                Text("Pupuk",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500)))
              ],
            )),
        SizedBox(width: deviceWidth(context) * 0.04),
        Expanded(
            flex: 2,
            child: Column(
              children: [
                Container(
                    child: Image.asset("assets/image/padi_1.png", scale: 2),
                    width: 59,
                    height: 49,
                    decoration: BoxDecoration(
                        color: greenContent,
                        borderRadius: BorderRadius.circular(
                            deviceHeight(context) * 0.01))),
                SizedBox(height: deviceHeight(context) * 0.02),
                Text("Benih",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500)))
              ],
            )),
        SizedBox(width: deviceWidth(context) * 0.04),
        Expanded(
            flex: 2,
            child: Column(children: [
              Container(
                  child: Image.asset("assets/image/karung.png", scale: 2),
                  width: 59,
                  height: 49,
                  decoration: BoxDecoration(
                      color: greenContent,
                      borderRadius:
                          BorderRadius.circular(deviceHeight(context) * 0.01))),
              SizedBox(height: deviceHeight(context) * 0.02),
              Text("Panen",
                  style: GoogleFonts.poppins(
                      textStyle:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500)))
            ])),
        SizedBox(width: deviceWidth(context) * 0.04),
        Expanded(
            flex: 2,
            child: Column(children: [
              Container(
                  child: Image.asset("assets/image/compost.png", scale: 2),
                  width: 59,
                  height: 49,
                  decoration: BoxDecoration(
                      color: greenContent,
                      borderRadius:
                          BorderRadius.circular(deviceHeight(context) * 0.01))),
              SizedBox(height: deviceHeight(context) * 0.02),
              Text("Tanam",
                  style: GoogleFonts.poppins(
                      textStyle:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500)))
            ]))
      ])
    ]);
  }
}
