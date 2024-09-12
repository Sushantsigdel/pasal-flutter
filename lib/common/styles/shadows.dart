import 'package:flutter/material.dart';
import 'package:pasal/utils/constants/colors.dart';

class PShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: PColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}
