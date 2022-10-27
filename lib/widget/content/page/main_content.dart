// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new, sort_child_properties_last, unused_import, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantani_flutter/widget/content/components/coming_soon_components.dart';
import 'package:plantani_flutter/widget/content/components/home/main_page_component.dart';
import 'package:plantani_flutter/widget/content/components/profile/profile_page_component.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
          activeColor: Color.fromARGB(255, 28, 106, 119),
          inactiveColor: Color.fromARGB(255, 28, 66, 79),
          backgroundColor: Colors.white,
          iconSize: 32,
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.house),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.storefront),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grass_outlined),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.groups_outlined),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined),
            ),
          ]),
      tabBuilder: (BuildContext context, i) {
        return CupertinoTabView(
          builder: (context) {
            switch (i) {
              case 0:
                return ComponentWidget();
              case 1:
                return coming_soon();
              case 2:
                return Text("Hello Case 3");
              case 3:
                return coming_soon();
              case 4:
                return profile_component();
              default:
                return coming_soon();
            }
          },
        );
      },
    );
  }
}

double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;
double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;
