import 'package:flutter/material.dart';
import 'package:pasal/utils/constants/colors.dart';
import 'package:pasal/utils/constants/sizes.dart';

class PCircularContainer extends StatelessWidget {
  const PCircularContainer({
    super.key,
    this.child,
    this.width,
    this.height,
    this.radius = PSizes.cardRadiusLg,
    this.padding,
    this.margin,
    this.backgroundColor = PColors.white,
    this.showBorder = false,
    this.borderCOlor = PColors.borderPrimary,
  });

  final double? width;
  final double? height;
  final double radius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final bool showBorder;
  final Color borderCOlor;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
        border: showBorder ? Border.all(color: borderCOlor) : null,
      ),
      child: child,
    );
  }
}
