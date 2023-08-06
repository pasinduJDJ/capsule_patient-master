import 'package:flutter/material.dart';

class ScreenSize {
  static Size _screenSize = Size.zero;

  static void init(BuildContext context) {
    _screenSize = MediaQuery.of(context).size;
  }

  static get height => _screenSize.height;
  static get width => _screenSize.width;

  static double getResponsiveFontSize(double fontSize) {
    return fontSize * width / 375.0;
  }
}
