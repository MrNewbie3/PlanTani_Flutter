// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// class MainPage extends StatelessWidget {
//   final User user;
//   MainPage(this.user);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//             child: Column(children: [
//       Text(user.uid),
//       TextButton(onPressed: () async {}, child: Text("Sign Out"))
//     ])));
//   }
// }
class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: <Widget>[Text("data")],
      ),
    ));
  }
}
