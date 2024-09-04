import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontText {
  BuildContext context;
  FontText(this.context);
  double get width => MediaQuery.of(context).size.width;
  TextStyle get headingLarge => GoogleFonts.abel(
        color: Colors.black,
        fontSize: width < 600 ? 24 : width / 25,
        fontWeight: FontWeight.bold,
      );

  TextStyle get headingLargeWhite => GoogleFonts.abel(
        color: Colors.white,
        fontSize: width < 600 ? 30 : width / 25,
        fontWeight: FontWeight.normal,
      );

  TextStyle get bodyMediumBlack => GoogleFonts.abel(
        color: Colors.black,
        fontSize: width < 600 ? 16 : width / 60,
        fontWeight: FontWeight.bold,
      );

  TextStyle get bodySmallBlack => GoogleFonts.abel(
        color: Colors.black,
        fontSize: width < 600 ? 12 : width / 100,
        fontWeight: FontWeight.normal,
      );

  TextStyle get bodySmallUnderline => GoogleFonts.abel(
        color: Colors.black,
        fontSize: width < 600 ? 12 : width / 100,
        fontWeight: FontWeight.normal,
        decoration: TextDecoration.underline,
      );

  TextStyle get bodySmallBlackBold => GoogleFonts.abel(
        color: Colors.black,
        fontSize: width < 600 ? 12 : width / 100,
        fontWeight: FontWeight.bold,
      );

  TextStyle get bodySmallWhite => GoogleFonts.abel(
        color: Colors.white,
        fontSize: width < 600 ? 12 : width / 100,
        fontWeight: FontWeight.normal,
      );

  TextStyle get smallWhiteCalendar => GoogleFonts.abel(
        color: Colors.white,
        fontSize: width < 600 ? 10 : width / 100,
        fontWeight: FontWeight.normal,
      );

  static TextStyle defaultStyle({
    Color color = Colors.black,
    double fontSize = 10,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }
}
