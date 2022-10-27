// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantani_flutter/widget/content/components/color_responsive.dart';

class profile_component extends StatelessWidget {
  const profile_component({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(children: <Widget>[
        Row(children: <Widget>[
          Container(
              width: deviceHeight(context) * 0.1,
              height: deviceHeight(context) * 0.1,
              child: Image.asset(
                "assets/image/Google_Logo.png",
                scale: 2,
              ),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(100))),
          SizedBox(
            width: deviceWidth(context) * 0.05,
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Selamat Pagi,",
                  style: GoogleFonts.poppins(
                      textStyle:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),
                ),
                Text(
                  "Echo Nugroho",
                  style: GoogleFonts.poppins(
                      textStyle:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
                )
              ])
        ])
      ]),
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications_outlined,
            size: 32,
          ))
    ]);
  }
}
