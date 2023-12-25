import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class ShadowStyle {
  static final verticalProductShadow = BoxShadow(
      color: ArpitColors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2)); // BoxShadow
  static final horizontalProductShadow = BoxShadow(
      color: ArpitColors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2)); // BoxShadow
}
