import 'package:flutter/material.dart';

Color? get icon1Color => Colors.pink[100];
Color get icon2Color => Colors.blueGrey;
Color get iconDark => Colors.white;

Color get textColor1 => Colors.blueGrey;
Color? get textColor2 => Colors.pink[100];
Color get textDark => Colors.white;

Color get backGround => Colors.white;
Color get backGroundDark => Colors.black;

Color hexToColor(String codeHex) =>
    Color(int.parse(codeHex.substring(1, 7), radix: 16) + 0xFF000000);

Color get testHex => hexToColor("#1cba9a");
Color get testOpacity => Colors.red.withOpacity(0.5);
