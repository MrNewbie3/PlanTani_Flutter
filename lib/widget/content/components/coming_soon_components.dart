// ignore_for_file: deprecated_member_use, prefer_const_constructors, camel_case_types

import 'package:flutter/cupertino.dart';

class coming_soon extends StatelessWidget {
  const coming_soon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text("Not Available!"),
      content: Text("This feature still unavailable, will coming soon"),
    );
  }
}
