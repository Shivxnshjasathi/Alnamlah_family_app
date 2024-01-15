import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/widgets/colour.dart';
import 'package:flutter_application_1/ui/widgets/text.dart';

Widget buttonwidget(String text1, Color col, Color col2) {
  return Container(
    height: 55,
    width: 350,
    decoration: BoxDecoration(
        border: Border.all(color: Colors.black12, width: 2),
        color: col,
        borderRadius: BorderRadius.circular(10)),
    child: Center(child: textwidget(text1, 18, col2, FontWeight.bold)),
  );
}
