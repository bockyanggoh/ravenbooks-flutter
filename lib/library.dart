import 'dart:ui';

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