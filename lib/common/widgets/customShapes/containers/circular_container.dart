import 'package:flutter/material.dart';
import 'package:shopup/utils/constants/colors.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.child,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding,
    this.backgroundColor = TColors.white,
    this.margin, 
    this.showBorder = false,
    this.borderColor = TColors.borderPrimary,
  });
  final double? width;
  final double? height;
  final double radius;
  final padding;
  final Widget? child;
  final Color backgroundColor;
  final Color borderColor;
  final margin;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
