import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  static const textStyle18 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static const textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );
  static const textStyle20italic = TextStyle(
      fontSize: 16, fontWeight: FontWeight.w200, fontStyle: FontStyle.italic);
  static const textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w900,
    // fontFamily: kGtSectraFine,
    letterSpacing: 1.2,
  );
  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static const textStyleblack = TextStyle(
    fontSize: 18,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  static const textStylewhite = TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.w200,
  );

  static final textStylegupter20 = GoogleFonts.gupter(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static final textStylegupter30 = GoogleFonts.gupter(
      fontSize: 33,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.2,
      wordSpacing: 0.5);
}

const TextStyle textStyle = TextStyle();
