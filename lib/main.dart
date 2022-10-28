// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable, duplicate_ignore

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantani_flutter/provider/google_sign_in.dart';
import 'package:plantani_flutter/widget/start/splash_screen.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  MaterialColor white =
      MaterialColor(Color.fromRGBO(255, 255, 255, 1).value, <int, Color>{
    50: Color.fromRGBO(255, 255, 255, 0.1),
    100: Color.fromRGBO(255, 255, 255, 0.2),
    200: Color.fromRGBO(255, 255, 255, 0.3),
    300: Color.fromRGBO(255, 255, 255, 0.4),
    400: Color.fromRGBO(255, 255, 255, 0.5),
    500: Color.fromRGBO(255, 255, 255, 0.6),
    600: Color.fromRGBO(255, 255, 255, 0.7),
    700: Color.fromRGBO(255, 255, 255, 0.8),
    800: Color.fromRGBO(255, 255, 255, 0.9),
    900: Color.fromRGBO(255, 255, 255, 01),
  });
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            textTheme: GoogleFonts.poppinsTextTheme(textTheme),
            primarySwatch: white,
            backgroundColor: Color.fromRGBO(252, 252, 254, 1)),
        home: SplashScreen(),
      ),
    );
  }
}
