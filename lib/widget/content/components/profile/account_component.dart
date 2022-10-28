// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantani_flutter/widget/content/components/color_responsive.dart';

class account_component extends StatelessWidget {
  account_component({Key? key}) : super(key: key);
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(Icons.mail_outline),
            SizedBox(width: deviceWidth(context) * 0.02),
            Text(
              user.email!,
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
              )),
            )
          ],
        ),
        SizedBox(height: deviceHeight(context) * 0.02),
        Row(
          children: <Widget>[
            Icon(Icons.phone_outlined),
            SizedBox(width: deviceWidth(context) * 0.02),
            Text(
              (user.phoneNumber == null
                  ? "Phone Number not found"
                  : user.phoneNumber!),
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: darkContent)),
            )
          ],
        ),
        SizedBox(height: deviceHeight(context) * 0.02),
        Container(
          alignment: Alignment.centerLeft,
          child: TextButton(
              onPressed: () {},
              child: Container(
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(deviceWidth(context) * 0.01),
                    color: darkContent),
                padding: EdgeInsets.fromLTRB(
                  deviceWidth(context) * 0.075,
                  deviceWidth(context) * 0.02,
                  deviceWidth(context) * 0.075,
                  deviceWidth(context) * 0.02,
                ),
                child: Text(
                  "Edit Profil",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                ),
              )),
        )
      ],
    );
  }
}
