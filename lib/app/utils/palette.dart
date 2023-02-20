import 'package:flutter/material.dart';

class Palette {
  static const primaryColor = Color(0xFF0D47A1);

  Color getColorByNota(String nota) {
    switch (nota) {
      case 'A':
        return Colors.green;
      case 'B':
        return Colors.blue;
      case 'C':
        return Colors.yellow;
      case 'D':
        return Colors.orange;
      default:
        return Colors.red;
    }
  }
}

Palette palette = Palette();
