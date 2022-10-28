// ignore_for_file: unnecessary_import, implementation_imports, unused_import, prefer_const_literals_to_create_immutables, duplicate_ignore, sort_child_properties_last, unnecessary_new, prefer_const_constructors
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantani_flutter/widget/content/components/home/berita_terkini_component.dart';
import 'package:plantani_flutter/widget/content/components/home/cuaca_component.dart';
import 'package:plantani_flutter/widget/content/components/home/history_section_component.dart';
import 'package:plantani_flutter/widget/content/components/home/kategori_component.dart';
import 'package:plantani_flutter/widget/content/components/home/profile_component.dart';
import 'package:plantani_flutter/widget/content/page/main_content.dart';

class ComponentWidget extends StatelessWidget {
  ComponentWidget({Key? key}) : super(key: key);
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.fromLTRB(deviceWidth(context) * 0.03,
          deviceHeight(context) * 0.05, deviceWidth(context) * 0.03, 0),
      child: new ListView(children: <Widget>[
        profile_component(),
        SizedBox(height: deviceHeight(context) * 0.025),
        history_section(),
        SizedBox(height: deviceHeight(context) * 0.025),
        //  Kategori Section
        kategori_components(),
        SizedBox(height: deviceHeight(context) * 0.025),
        // Cuaca Section
        cuaca_components(),
        SizedBox(height: deviceHeight(context) * 0.025),
        // Berita terkini Section
        berita_terkini_components()
      ]),
    ));
  }
}

// height, width, color define
