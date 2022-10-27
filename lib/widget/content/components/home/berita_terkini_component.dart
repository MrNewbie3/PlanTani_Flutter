// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantani_flutter/widget/content/components/color_responsive.dart';

class berita_terkini_components extends StatelessWidget {
  const berita_terkini_components({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      height: deviceHeight(context) * 0.2,
      child: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Column(children: [
            Image.asset(
              "assets/image/hama_tikus.png",
              scale: 2,
            ),
            SizedBox(height: deviceHeight(context) * 0.02),
            Text("Hama tikus",
                style: GoogleFonts.poppins(
                    textStyle:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w400)))
          ]),
          SizedBox(width: deviceWidth(context) * 0.04),
          Column(children: [
            Image.asset(
              "assets/image/pencegahan_gulma.png",
              scale: 2,
            ),
            SizedBox(height: deviceHeight(context) * 0.02),
            Text("Pencegahan Gulma",
                style: GoogleFonts.poppins(
                    textStyle:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w400)))
          ]),
          SizedBox(width: deviceWidth(context) * 0.04),
          Column(children: [
            Image.asset(
              "assets/image/hama_ulat.png",
              scale: 2,
            ),
            SizedBox(height: deviceHeight(context) * 0.02),
            Text("Serangan Ulat",
                style: GoogleFonts.poppins(
                    textStyle:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w400)))
          ])
        ],
      ),
    );
    // Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    //   Text("Berita Terkini"),
    //   SizedBox(
    //     height: deviceHeight(context) * 0.025,
    //   ),
    //   Row(children: <Widget>[
    //     Expanded(
    //         flex: 2,
    //         child: Column(children: [
    //           Image.asset("assets/image/hama_tikus.png"),
    //           Text("Hama tikus")
    //         ])),
    //     SizedBox(width: deviceWidth(context) * 0.04),
    //     Expanded(
    //         flex: 2,
    //         child: )),
    //
    //     Expanded(
    //         flex: 2,
    //         child: ),
    //   ])
    // ]);
  }
}
