// ignore_for_file: unnecessary_import, implementation_imports, unused_import, prefer_const_literals_to_create_immutables, duplicate_ignore, sort_child_properties_last, unnecessary_new, prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:plantani_flutter/widget/content/page/main_content.dart';

class ComponentWidget extends StatelessWidget {
  const ComponentWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(deviceWidth(context) * 0.02),
            child: new ListView(shrinkWrap: true, children: <Widget>[
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Row(children: <Widget>[
                  Row(children: <Widget>[
                    Container(
                        width: deviceHeight(context) * 0.1125,
                        height: deviceHeight(context) * 0.1125,
                        child: Image.asset(
                          "assets/image/undraw_community_re_cyrm 1.png",
                          scale: 0.1,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(100))),
                    SizedBox(
                      width: 20,
                    ),
                    Column(children: <Widget>[
                      Text("Selamat Pagi"),
                      Text("Echo Nugroho")
                    ])
                  ])
                ]),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.notifications_outlined))
              ]),
              Row(children: <Widget>[
                Expanded(
                    flex: 2,
                    child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(.25),
                                  blurRadius: 4,
                                  offset: Offset(0, 4),
                                  spreadRadius: 0)
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                                deviceWidth(context) * 0.02)),
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: <Widget>[Text("Pengairan"), Text("4")],
                        )))),
                SizedBox(width: deviceWidth(context) * 0.04),
                Expanded(
                    flex: 2,
                    child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(.25),
                                  blurRadius: 4,
                                  offset: Offset(0, 4),
                                  spreadRadius: 0)
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                                deviceWidth(context) * 0.02)),
                        child: Center(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                              Text("Pemupukan"),
                              Text("4"),
                            ]))))
              ]),
              Column(children: [
                Text("Kategori"),
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
                  SizedBox(width: deviceWidth(context) * 0.04),
                  Expanded(
                      flex: 2,
                      child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(color: Colors.yellow))),
                ])
              ]),
              Column(children: [
                Text("Kategori"),
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
                  SizedBox(width: deviceWidth(context) * 0.04),
                  Expanded(
                      flex: 2,
                      child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(color: Colors.yellow))),
                ])
              ]),
              Column(children: [
                Text("Kategori"),
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
                  SizedBox(width: deviceWidth(context) * 0.04),
                  Expanded(
                      flex: 2,
                      child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(color: Colors.yellow)))
                ])
              ])
            ])));
  }
}

double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;
double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;
