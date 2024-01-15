import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget textwidget(String text, double tsize, Color col, FontWeight weight2) {
  return Text(
    text,
    textAlign: TextAlign.right,
    style: GoogleFonts.poppins(
      color: col,
      fontSize: tsize,
      fontWeight: weight2,
    ),
  );
}
