// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:plantani_flutter/widget/content/components/color_responsive.dart';
import 'package:plantani_flutter/widget/content/components/plant/report_text_component.dart';

class new_plant extends StatelessWidget {
  const new_plant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.fromLTRB(
          deviceWidth(context) * 0.025,
          deviceHeight(context) * 0.025,
          deviceWidth(context) * 0.025,
          deviceWidth(context) * 0.025),
      height: deviceHeight(context) * 1.5,
      child: ListView(children: <Widget>[
        Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Text("Tanaman Baru")
          ],
        ),
        SizedBox(height: deviceHeight(context) * 0.025),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          Text("Masukkan data dengan benar"),
          SizedBox(height: deviceHeight(context) * 0.025),
          Row(children: <Widget>[
            Expanded(
                flex: 4,
                child: Container(
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
                                hintText: 'Luas Tanah',
                                filled: true,
                                fillColor: Colors.white))))),
            SizedBox(width: deviceWidth(context) * 0.02),
            Expanded(
                flex: 1,
                child: SizedBox(
                  width: double.infinity,
                  child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          hintStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          hintText: 'Ha',
                          filled: true,
                          fillColor: darkContent)),
                )),
          ])
        ]),
        SizedBox(height: deviceHeight(context) * 0.025),
        Expanded(
            flex: 4,
            child: Container(
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
                            hintText: 'Jenis Bibit',
                            filled: true,
                            fillColor: Colors.white))))),
        SizedBox(height: deviceHeight(context) * 0.025),
        Row(children: <Widget>[
          Expanded(
              flex: 4,
              child: Container(
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
                              hintText: 'Banyak Bibit',
                              filled: true,
                              fillColor: Colors.white))))),
          SizedBox(width: deviceWidth(context) * 0.02),
          Expanded(
              flex: 1,
              child: SizedBox(
                  width: double.infinity,
                  child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          hintStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          hintText: 'Kg',
                          filled: true,
                          fillColor: darkContent))))
        ]),
        SizedBox(height: deviceHeight(context) * 0.025),
        Expanded(
            flex: 4,
            child: Container(
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
                            hintText: 'Harga Bibit',
                            filled: true,
                            fillColor: Colors.white))))),
        SizedBox(height: deviceHeight(context) * 0.025),
        report_text(),
      ]),
    ));
  }
}
