// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new, sort_child_properties_last, unused_import, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantani_flutter/widget/content/components/main_page_component.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "Text",
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.arrow_up_square),
          label: "Text",
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.arrow_up_square),
          label: "Text",
        ),
      ]),
      tabBuilder: (BuildContext context, i) {
        return CupertinoTabView(
          builder: (context) {
            switch (i) {
              case 0:
                return ComponentWidget();
              case 1:
                return Text("Hello Case 2");
              case 2:
                return Text("Hello Case 3");
              default:
                return Text("Hello Case 4");
            }
            // return CupertinoPageScaffold(
            //   child: ComponentWidget(),
            // );
          },
        );
      },
    );
  }
}

double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;
double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;
