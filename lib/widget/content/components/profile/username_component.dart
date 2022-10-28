// ignore_for_file: camel_case_types

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantani_flutter/widget/content/components/color_responsive.dart';

class username_component extends StatelessWidget {
  username_component({Key? key}) : super(key: key);
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Row(children: [
        Container(
            width: deviceHeight(context) * 0.1,
            height: deviceHeight(context) * 0.1,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(100)),
            child: Image.asset(
              "assets/image/Google_Logo.png",
              scale: 2,
            )),
        SizedBox(
          width: deviceWidth(context) * 0.05,
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Echo Nugroho",
            style: GoogleFonts.poppins(
                textStyle:
                    TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
          ),
          Text(
            "Petani",
            style: GoogleFonts.poppins(
                textStyle:
                    TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),
          ),
        ])
      ]),
    ]);
  }
}
