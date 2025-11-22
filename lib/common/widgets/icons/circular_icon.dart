import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({
    super.key,
    this.onPressed,
    required this.icon,
    this.width,
    this.height,
    this.size = ESizes.lg,
    this.color,
    this.backgroundColor,
  });

  final double? width, height, size;
  final Color? color, backgroundColor;
  final VoidCallback? onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = EHelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,

      decoration: BoxDecoration(
        color:
            backgroundColor ??
            (isDarkMode
                ? EColors.black.withValues(alpha: 0.9)
                : EColors.white.withValues(alpha: 0.9)),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
