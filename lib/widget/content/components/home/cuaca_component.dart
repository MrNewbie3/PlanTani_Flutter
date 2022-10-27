// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantani_flutter/widget/content/components/color_responsive.dart';
import 'package:jiffy/jiffy.dart';

class cuaca_components extends StatelessWidget {
  const cuaca_components({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "Cuaca & Berita Terkini",
        style: GoogleFonts.poppins(
            textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
      ),
      SizedBox(
        height: deviceHeight(context) * 0.025,
      ),
      Row(children: <Widget>[
        Expanded(
            flex: 1,
            child: Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(28, 66, 79, 1.0),
                    borderRadius:
                        BorderRadius.circular(deviceHeight(context) * 0.02)),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: deviceHeight(context) * 0.02,
                    bottom: deviceHeight(context) * 0.02,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            "30",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)),
                          ),
                          Text("$dateNow",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white)))
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 2,
                        color: Colors.white,
                      ),
                      Column(
                        children: <Widget>[
                          Image.asset(
                            "assets/image/sun.png",
                            scale: 1.5,
                          ),
                          Text("Cerah Sepanjang Hari",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white)))
                        ],
                      )
                    ],
                  ),
                ))),
      ])
    ]);
  }
}

var dateNow = Jiffy().yMMMMd;
