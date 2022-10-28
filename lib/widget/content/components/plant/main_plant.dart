// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantani_flutter/widget/content/components/color_responsive.dart';
import 'package:plantani_flutter/widget/content/components/plant/bar_chart.dart';
import 'package:plantani_flutter/widget/content/components/plant/new_plant.dart';

class main_plant extends StatelessWidget {
  const main_plant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.fromLTRB(
          deviceWidth(context) * 0.075,
          deviceHeight(context) * 0.075,
          deviceWidth(context) * 0.075,
          deviceWidth(context) * 0.025),
      child: Column(children: <Widget>[
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Tanaman",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 28, fontWeight: FontWeight.w600))),
              Icon(Icons.settings_outlined)
            ]),
        SizedBox(height: deviceHeight(context) * 0.025),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          Text("Harga Pasar",
              style: GoogleFonts.poppins(
                  textStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w600))),
          Container(
            width: double.infinity,
            height: deviceHeight(context) * 0.3,
            child: bar_chart(),
          )
        ]),
        SizedBox(height: deviceHeight(context) * 0.025),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          Text(
            "Tanam Sekarang",
            style: GoogleFonts.poppins(
                textStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          ),
          SizedBox(height: deviceHeight(context) * 0.025),
          Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: greenContent.withOpacity(.13),
                    blurRadius: 6,
                    spreadRadius: 1,
                    offset: Offset(0, 3))
              ], borderRadius: BorderRadius.circular(10)),
              child: SizedBox(
                  width: double.infinity,
                  child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          hintText: 'Jenis Tanaman',
                          filled: true,
                          fillColor: Colors.white)))),
          SizedBox(height: deviceHeight(context) * 0.025),
          Container(
              width: deviceWidth(context),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.25),
                        blurRadius: 4,
                        spreadRadius: 0,
                        offset: Offset(0, 4))
                  ],
                  color: Color.fromRGBO(28, 66, 79, 1),
                  borderRadius: BorderRadius.circular(10)),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => new_plant()));
                  },
                  child: Text("Tambah",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400)))))
        ])
      ]),
    ));
  }
}
