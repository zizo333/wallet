import 'package:flutter/material.dart';

class HexColor extends Color {
  HexColor(String hexColor) : super(_hexToColor(hexColor));

  static int _hexToColor(String hexColor) {
    hexColor = hexColor.replaceAll('#', '')..toUpperCase();
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return int.parse(hexColor, radix: 16);
  }
}