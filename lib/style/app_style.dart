import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  // Images
  static const String travelDestination = "assets/images/TravelDestination.jpg";
  static const String events = "assets/images/event.jpg";
  static const String commercial = "assets/images/commercial.jpg";
  static const String info = "assets/images/info.jpg";
  static const String tours = "assets/images/tours.jpg";
  static const String test = "assets/images/Welcome.jpg";
  static const String Mesuem = "assets/images/Q (1 of 1).jpg";
  //Icon uudaa bas endee shiidej bolno .svg urgutgultei icon vvsgeed
  //  unguu bas uguud duudaj bolno
  static const inputFillColor = Colors.white12;
  // theme fontstyle bol
  static ThemeData? theme = ThemeData(
      textTheme: GoogleFonts.nunitoSansTextTheme().apply(
          bodyColor: const Color(0xff0E1012), displayColor: Color(0xff0E1012)));
}
