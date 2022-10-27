// ignore_for_file: sort_child_properties_last, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:plantani_flutter/widget/content/components/color_responsive.dart';
import 'package:plantani_flutter/widget/content/components/profile/account_component.dart';
import 'package:plantani_flutter/widget/content/components/profile/setting_option_component.dart';
import 'package:plantani_flutter/widget/content/components/profile/status_component.dart';
import 'package:plantani_flutter/widget/content/components/profile/username_component.dart';

class profile_component extends StatelessWidget {
  const profile_component({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: deviceHeight(context) * 2,
            child: ListView(children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(
                      deviceWidth(context) * 0.05,
                      deviceHeight(context) * 0.05,
                      deviceWidth(context) * 0.05,
                      0),
                  child: Column(children: [
                    username_component(),
                    SizedBox(height: deviceHeight(context) * 0.025),
                    account_component(),
                    SizedBox(height: deviceHeight(context) * 0.025),
                    status_component(),
                    SizedBox(height: deviceHeight(context) * 0.025),
                    setting_option_component(),
                    SizedBox(height: deviceHeight(context) * 0.025),
                    Image.asset("assets/image/credits.png")
                  ]))
            ])));
  }
}
