import 'package:flutter/material.dart';

class ArpitHelper {
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}
