// ignore_for_file: sort_child_properties_last

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantani_flutter/widget/content/components/color_responsive.dart';

class profile_component extends StatelessWidget {
  profile_component({Key? key}) : super(key: key);
  final user = FirebaseAuth.instance.currentUser!;
  
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(children: <Widget>[
        Row(children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image(
              image: NetworkImage(user.photoURL!),
              width: deviceHeight(context) * 0.1,
              height: deviceHeight(context) * 0.1,
            ),
          ),
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
                  user.displayName!,
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
