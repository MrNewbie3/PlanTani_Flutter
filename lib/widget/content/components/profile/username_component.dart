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
        ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image(
              image: NetworkImage(user.photoURL!, scale: 1.5),
            )),
        SizedBox(
          width: deviceWidth(context) * 0.05,
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            user.displayName!,
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
