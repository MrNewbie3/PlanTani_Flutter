// ignore_for_file: unnecessary_import, implementation_imports, unused_import, prefer_const_literals_to_create_immutables, duplicate_ignore, sort_child_properties_last, unnecessary_new, prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantani_flutter/widget/content/page/main_content.dart';

class ComponentWidget extends StatelessWidget {
  const ComponentWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.fromLTRB(deviceWidth(context) * 0.02,
          deviceHeight(context) * 0.05, deviceWidth(context) * 0.02, 0),
      child: new ListView(shrinkWrap: true, children: <Widget>[
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
                          textStyle: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w400)),
                    ),
                    Text(
                      "Echo Nugroho",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600)),
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
        ]),
        SizedBox(
          height: deviceHeight(context) * 0.025,
        ),
        Row(children: <Widget>[
          Expanded(
              flex: 2,
              child: Container(
                  height: deviceHeight(context) * 0.1,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(.25),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0)
                      ],
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(deviceWidth(context) * 0.02)),
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      Text("Pengairan",
                          style: GoogleFonts.poppins(textStyle: TextStyle())),
                      Text("4",
                          style: GoogleFonts.poppins(textStyle: TextStyle()))
                    ],
                  )))),
          SizedBox(width: deviceWidth(context) * 0.04),
          Expanded(
              flex: 2,
              child: Container(
                  height: deviceHeight(context) * 0.1,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(.25),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0)
                      ],
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(deviceWidth(context) * 0.02)),
                  child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                        Text("Pemupukan",
                            style: GoogleFonts.poppins(textStyle: TextStyle())),
                        Text("4",
                            style: GoogleFonts.poppins(textStyle: TextStyle())),
                      ]))))
        ]),
        SizedBox(
          height: deviceHeight(context) * 0.025,
        ),
        //  Kategori Section
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Kategori"),
          SizedBox(
            height: deviceHeight(context) * 0.025,
          ),
          Row(children: <Widget>[
            Expanded(
                flex: 2,
                child: Container(
                    child: Image.asset("assets/image/pupuk_1.png"),
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: greenContent,
                        borderRadius: BorderRadius.circular(
                            deviceHeight(context) * 0.02)))),
            SizedBox(width: deviceWidth(context) * 0.04),
            Expanded(
                flex: 2,
                child: Container(
                    child: Image.asset("assets/image/padi_1.png"),
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: greenContent,
                        borderRadius: BorderRadius.circular(
                            deviceHeight(context) * 0.02)))),
            SizedBox(width: deviceWidth(context) * 0.04),
            Expanded(
                flex: 2,
                child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: greenContent,
                        borderRadius: BorderRadius.circular(
                            deviceHeight(context) * 0.02)))),
            SizedBox(width: deviceWidth(context) * 0.04),
            Expanded(
                flex: 2,
                child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: greenContent,
                        borderRadius: BorderRadius.circular(
                            deviceHeight(context) * 0.02)))),
          ])
        ]),
        SizedBox(
          height: deviceHeight(context) * 0.025,
        ),
        // Cuaca Section
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Cuaca"),
          SizedBox(
            height: deviceHeight(context) * 0.025,
          ),
          Row(children: <Widget>[
            Expanded(
                flex: 2,
                child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(28, 66, 79, 1.0),
                        borderRadius: BorderRadius.circular(
                            deviceHeight(context) * 0.02)))),
          ])
        ]),
        SizedBox(
          height: deviceHeight(context) * 0.025,
        ),
        // Berita terkini Section
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Berita Terkini"),
          SizedBox(
            height: deviceHeight(context) * 0.025,
          ),
          Row(children: <Widget>[
            Expanded(
                flex: 2,
                child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(color: Colors.red))),
            SizedBox(width: deviceWidth(context) * 0.04),
            Expanded(
                flex: 2,
                child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(color: Colors.green))),
            SizedBox(width: deviceWidth(context) * 0.04),
            Expanded(
                flex: 2,
                child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(color: Colors.blue))),
          ])
        ])
      ]),
    ));
  }
}

// height, width, color define
double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;
double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;
MaterialColor greenContent =
    MaterialColor(Color.fromRGBO(89, 185, 140, 1.0).value, <int, Color>{});
