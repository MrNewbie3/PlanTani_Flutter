// ignore_for_file: depend_on_referenced_packages, unused_local_variable, unnecessary_null_comparison

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:plantani_flutter/widget/home_page.dart';
import 'package:plantani_flutter/widget/login_page.dart';
import 'package:plantani_flutter/widget/wellcome_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasData) {
          return AnimatedSplashScreen(
            splash: 'assets/image/Plantani.png',
            splashIconSize: 34,
            nextScreen: const MainPage(),
            splashTransition: SplashTransition.fadeTransition,
            pageTransitionType: PageTransitionType.bottomToTop,
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text("Something went wrong"),
          );
        } else {
          return AnimatedSplashScreen(
            splash: 'assets/image/Plantani.png',
            splashIconSize: 34,
            nextScreen: const welcomePage(),
            splashTransition: SplashTransition.fadeTransition,
            pageTransitionType: PageTransitionType.bottomToTop,
          );
        }
      },
    );
  }
}
