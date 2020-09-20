import 'dart:ui';

import 'package:flutter/material.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class MonoKaiColors {
  static Color greyDark = HexColor("#272822");
  static Color greyMedium = HexColor("#3e3d32");
  static Color greyLight = HexColor("#75715e");
  static Color white = HexColor("#f8f8f2");
}

class SharedConfig {
  static final TextStyle titleStyle = TextStyle(
    fontFamily: 'HarryP',
    fontSize: 50,
    color: HexColor('#800000')
  );

  static final TextStyle descriptionStyle = TextStyle(
    fontFamily: 'WolfpackHall',
    fontWeight: FontWeight.w200,
    fontSize: 15,
    color: Colors.grey[500]
  );

  static final TextStyle generalTextStyle = TextStyle(
    fontFamily: 'WolfpackHall',
    fontSize: 18,
    color: Colors.black,
  );
}

class RavenclawColors {
  static final navy = HexColor("#0e1a40");
  static final blue = HexColor("#222f5b");
  static final grey = HexColor("#5d5d5d");
  static final brown = HexColor("#946b2d");
  static final black = HexColor("#000000");
}