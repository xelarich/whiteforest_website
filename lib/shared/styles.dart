import 'package:flutter/material.dart';

class Styles {
  static const MaterialColor primaryColor = MaterialColor(
    0xFFD0A190,
    // shade50 is equal to shade100 because it doesn't exist in Mozaic
    <int, Color>{
      0: Color(0xFFFFFFFF),
      50: Color(0xFFFFECE5),
      100: Color(0xFFFFECE5),
      200: Color(0xFFFFDED3),
      300: Color(0xFFFFD0C0),
      400: Color(0xFFEEBDAB),
      500: Color(0xFFD0A190),
      600: Color(0xFFB38676),
      700: Color(0xFF966D5E),
      800: Color(0xFF795548),
      900: Color(0xFF5C3E34),
    },
  );
}
