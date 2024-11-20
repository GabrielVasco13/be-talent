import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Helvetica extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;

  const Helvetica({
    super.key,
    required this.text,
    this.fontSize = 14.0,
    this.fontWeight = FontWeight.normal,
  });

  factory Helvetica.h1(String text) {
    return Helvetica(
      text: text,
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
    );
  }

  factory Helvetica.h2(String text) {
    return Helvetica(
      text: text,
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
    );
  }

  factory Helvetica.h3(String text) {
    return Helvetica(
      text: text,
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
