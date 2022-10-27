// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:plantani_flutter/widget/content/components/color_responsive.dart';

class account_component extends StatelessWidget {
  const account_component({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(Icons.mail_outline),
            SizedBox(width: deviceWidth(context) * 0.02),
            Text("echokalimantanselatan@gmail.com")
          ],
        ),
        SizedBox(height: deviceHeight(context) * 0.02),
        Row(
          children: <Widget>[
            Icon(Icons.phone_outlined),
            SizedBox(width: deviceWidth(context) * 0.02),
            Text("+6285855008901")
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
                    color: Colors.blue),
                padding: EdgeInsets.fromLTRB(
                  deviceWidth(context) * 0.075,
                  deviceWidth(context) * 0.02,
                  deviceWidth(context) * 0.075,
                  deviceWidth(context) * 0.02,
                ),
                child: Text(
                  "Edit Profil",
                  style: TextStyle(color: Colors.white),
                ),
              )),
        )
      ],
    );
  }
}
