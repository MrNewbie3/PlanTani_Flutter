// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:plantani_flutter/widget/content/components/color_responsive.dart';
import 'package:plantani_flutter/widget/content/components/plant/new_plant.dart';

class report_text extends StatelessWidget {
  const report_text({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: deviceHeight(context) * 0.025),
        const Text("Estimasi Hasil Panen"),
        SizedBox(height: deviceHeight(context) * 0.025),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[Text("Luas Tanah"), Text("2 Hektare")],
        ),
        SizedBox(height: deviceHeight(context) * 0.01),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[Text("Jenis Bibit"), Text("MR129")],
        ),
        SizedBox(height: deviceHeight(context) * 0.01),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[Text("Banyak Bibit"), Text("32 Kg")],
        ),
        SizedBox(height: deviceHeight(context) * 0.01),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[Text("harga Bibit"), Text("Rp 27.400 /Kg")],
        ),
        SizedBox(height: deviceHeight(context) * 0.01),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[Text("Biaya Pupuk")],
        ),
        SizedBox(height: deviceHeight(context) * 0.01),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[Text(" - Pupuk Urea"), Text("Rp 2.400 * 300 * 3")],
        ),
        SizedBox(height: deviceHeight(context) * 0.01),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[Text(" - Pupuk KCL"), Text("Rp 4.500 * 100 * 2")],
        ),
        SizedBox(height: deviceHeight(context) * 0.01),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[Text(" - Pupuk TSP"), Text("Rp 9.900 * 100 * 1")],
        ),
        SizedBox(height: deviceHeight(context) * 0.01),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Biaya Pengairan"),
              Text("1l * Rp 10.000 * 34 * 5")
            ]),
        SizedBox(height: deviceHeight(context) * 0.01),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Biaya lain lain"),
              Text("1l * Rp 10.000 * 34 * 5")
            ]),
        SizedBox(height: deviceHeight(context) * 0.01),
        Container(width: double.infinity, height: 1, color: darkContent),
        SizedBox(height: deviceHeight(context) * 0.025),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[Text("Total Modal"), Text("Rp. 20.536.800")]),
        SizedBox(height: deviceHeight(context) * 0.01),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Perkiraan Hasil Panen"),
              Text("Rp. 46.200.000 / hektare")
            ]),
        SizedBox(height: deviceHeight(context) * 0.025),
        Container(width: double.infinity, height: 1, color: darkContent),
        SizedBox(height: deviceHeight(context) * 0.025),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Total Penghasilan"),
              Text("Rp. 71.863.200")
            ]),
        SizedBox(height: deviceHeight(context) * 0.025),
        Container(
            width: deviceWidth(context),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(.25),
                      blurRadius: 4,
                      spreadRadius: 0,
                      offset: Offset(0, 4))
                ],
                color: Color.fromRGBO(28, 66, 79, 1),
                borderRadius: BorderRadius.circular(10)),
            child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => new_plant()));
                },
                child: Text("Tambah",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w400))))
      ],
    );
  }
}
