import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9007f = fromHex('#7f030303');

  static Color gray700 = fromHex('#565656');

  static Color blueGray100 = fromHex('#d7d7d7');

  static Color gray5004c = fromHex('#4c969696');

  static Color blueGray400 = fromHex('#888888');

  static Color gray300 = fromHex('#dedede');

  static Color black90001 = fromHex('#000000');

  static Color black900 = fromHex('#030303');

  static Color black9007f01 = fromHex('#7f000000');

  static Color black90019 = fromHex('#19000000');

  static Color deepPurpleA700 = fromHex('#5600ff');

  static Color whiteA700 = fromHex('#ffffff');

  static Color black90002 = fromHex('#000000');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
