// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantani_flutter/provider/google_sign_in.dart';
import 'package:plantani_flutter/widget/content/page/main_content.dart';
import 'package:plantani_flutter/widget/start/sign_up_page.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
            width: double.infinity,
            height: size.height,
            child: Stack(children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(top: deviceHeight(context) * 0.15),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      'assets/image/Plantani.png',
                      scale: 2,
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      left: deviceWidth(context) * 0.05,
                      right: deviceWidth(context) * 0.05,
                      top: deviceHeight(context) * 0.1),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      verticalDirection: VerticalDirection.down,
                      children: <Widget>[
                        Align(
                          child: Text("Masuk akun Anda",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600))),
                        ),
                        Column(
                          children: <Widget>[
                            SizedBox(height: 15),
                            Container(
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(.25),
                                          blurRadius: 4,
                                          offset: Offset(0, 4),
                                          spreadRadius: 0)
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
                                child: TextButton(
                                  onPressed: () {
                                    final provider =
                                        Provider.of<GoogleSignInProvider>(
                                            context,
                                            listen: false);
                                    provider.googleLogin();
                                  },
                                  child: Image.asset(
                                    "assets/image/Google_Logo.png",
                                    scale: 3,
                                  ),
                                ))
                          ],
                        ),
                        SizedBox(height: 30),
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
                              borderRadius: BorderRadius.circular(15)),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MainPage()));
                            },
                            child: Text(
                              "Click Here After Select Account",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
                        ),
                      ]))
            ])));
  }
}

double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;
double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;
