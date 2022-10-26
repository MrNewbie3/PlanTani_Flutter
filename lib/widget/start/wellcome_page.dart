// ignore_for_file: import_of_legacy_library_into_null_safe, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'login_page.dart';

class welcomePage extends StatelessWidget {
  const welcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Expanded(
          child: SafeArea(
              // ignore: missing_required_param
              child: IntroductionScreen(
                  pages: [
            PageViewModel(
              title: "Pengelolaan Lahan",
              body:
                  "Aplikasi ini bisa dapat membantu para petani untuk mengelola sawah dengan tepat dan mudah",
              image: buildImage('assets/image/undraw_farm_girl_dnpe 1.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: "Komunitas Luas",
              body:
                  "Fitur forum memungkinkan bagi para petani saling berbagi bertanya dan menjawab satu sama lain",
              image: buildImage('assets/image/undraw_community_re_cyrm 1.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: "Pesan Antar",
              body:
                  "Jual beli bahan pertanian menjadi lebih mudah tinggal klik dari rumah dengan cepat mendarat ke tujuan",
              image: buildImage('assets/image/undraw_community_re_cyrm 1.png'),
              decoration: getPageDecoration(),
            ),
          ],
                  animationDuration: 400,
                  onDone: () => gotoHome(context),
                  showNextButton: true,
                  dotsDecorator: DotsDecorator(
                      size: const Size(20.0, 10.0),
                      activeSize: const Size(20.0, 10.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          side: BorderSide(
                              color: Color.fromRGBO(28, 66, 79, 1.0),
                              style: BorderStyle.solid,
                              width: 2.0)),
                      activeColor: Color.fromRGBO(28, 66, 79, 1.0),
                      color: Colors.white,
                      spacing: const EdgeInsets.symmetric(horizontal: 3.0),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          side: BorderSide(
                              color: Color.fromRGBO(28, 66, 79, 1.0),
                              style: BorderStyle.solid,
                              width: 2.0))),
                  next: Text("Selanjutnya",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(28, 66, 79, 1.0)))),
                  done: Text("Masuk",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(fontWeight: FontWeight.w600),
                          color: Color.fromRGBO(28, 66, 79, 1.0))))));
  void gotoHome(context) => {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (_) => LoginPage()))
      };
  Widget buildImage(String path) => Center(
      child: Expanded(
          flex: 10,
          child: Padding(
              padding: const EdgeInsets.all(30), child: Image.asset(path))));
  PageDecoration getPageDecoration() => PageDecoration(
      titleTextStyle: GoogleFonts.poppins(
          fontSize: 22,
          fontWeight: FontWeight.w600,
          color: Color.fromRGBO(28, 66, 79, 1.0)),
      bodyTextStyle: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color.fromRGBO(28, 66, 79, .9)),
      descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
      pageColor: Color.fromRGBO(252, 252, 254, 1.0));
}
