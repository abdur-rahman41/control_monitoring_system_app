import 'package:flutter/material.dart';

class AppColors {
  static Color primaryColor = const Color(0xff0096FC);
  static Color onPrimaryColor = Colors.white;

  static Color secondaryColor = const Color(0xff005CB2);
  static Color onSecondaryColor = Colors.white;

  static Color surfaceColor = Colors.white;
  static Color onSurfaceColor = Colors.black;
  static Color inputShadowBlue = const Color(0xff275a8a);
  static Color navBarColor = const Color(0xff005CB2);
  static Color greenColor = const Color(0xff53b567);

  static Color borderColor = const Color(0xffF2F2F2);

  static Color color212121 = const Color(0xff212121);
  static Color color545454 = const Color(0xff545454);
  static Color color737375 = const Color(0xff737375);
  static Color color00B277 = const Color(0xff00B277);

  static Color defaultButtonBackground = const Color(0xff005CB2);


  static List<Color> splashGradient = [
    const Color(0xffE97E31),
    const Color(0xffF5AF19),
    const Color(0xffF49E18),
    const Color(0xffF48F17)
  ];
}


extension ColorExtension on String {
  toColor() {
    var hexStringColor = this;
    final buffer = StringBuffer();

    if (hexStringColor.length == 6 || hexStringColor.length == 7) {
      buffer.write('ff');
      buffer.write(hexStringColor.replaceFirst("#", ""));
      return Color(int.parse(buffer.toString(), radix: 16));
    }
  }
}