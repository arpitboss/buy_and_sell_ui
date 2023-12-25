import 'package:flutter/material.dart';

import 'colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: ArpitColors.grey,
    brightness: Brightness.light,
    primaryColor: ArpitColors.primary,
    scaffoldBackgroundColor: ArpitColors.white,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: ArpitColors.grey,
    brightness: Brightness.dark,
    primaryColor: ArpitColors.primary,
    scaffoldBackgroundColor: ArpitColors.black,
  );
}
