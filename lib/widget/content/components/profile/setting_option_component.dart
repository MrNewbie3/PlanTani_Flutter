// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantani_flutter/widget/content/components/color_responsive.dart';

class setting_option_component extends StatelessWidget {
  const setting_option_component({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Row(children: <Widget>[
        Icon(Icons.info_outline, size: 30),
        SizedBox(width: deviceWidth(context) * 0.025),
        Text("Tentang subsidi",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: darkContent)))
      ]),
      SizedBox(height: deviceHeight(context) * 0.015),
      Row(children: <Widget>[
        Icon(Icons.account_balance_wallet_outlined, size: 30),
        SizedBox(width: deviceWidth(context) * 0.025),
        Text("Pembayaran",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: darkContent)))
      ]),
      SizedBox(height: deviceHeight(context) * 0.015),
      Row(children: <Widget>[
        Icon(Icons.report_outlined, size: 30),
        SizedBox(width: deviceWidth(context) * 0.025),
        Text("Laporan",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: darkContent)))
      ]),
      SizedBox(height: deviceHeight(context) * 0.015),
      Row(children: <Widget>[
        Icon(Icons.settings_outlined, size: 30),
        SizedBox(width: deviceWidth(context) * 0.025),
        Text("Laporkan",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: darkContent)))
      ]),
      SizedBox(height: deviceHeight(context) * 0.025),
      Container(width: double.infinity, height: 1, color: darkContent),
      SizedBox(height: deviceHeight(context) * 0.025),
      TextButton(
          onPressed: () {},
          child: Row(children: <Widget>[
            Icon(Icons.logout, size: 30, color: Colors.red),
            SizedBox(width: deviceWidth(context) * 0.025),
            Text("Keluar akun",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.red)))
          ]))
    ]);
  }
}
