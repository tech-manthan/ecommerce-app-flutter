import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    super.key,
    required this.image,
    this.isNetworkImage = false,
    this.size = 56,
    this.padding = ESizes.sm,
    this.backgroundColor,
    this.overlayColor,
    this.fit = BoxFit.cover,
  });

  final String image;
  final bool isNetworkImage;
  final double size, padding;
  final Color? backgroundColor, overlayColor;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = EHelperFunctions.isDarkMode(context);
    return Container(
      width: size,
      height: size,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ?? (isDarkMode ? EColors.black : EColors.white),
        borderRadius: BorderRadius.circular(size * 2),
      ),
      child: Image(
        fit: fit,
        image: isNetworkImage ? NetworkImage(image) : AssetImage(image),
        color: overlayColor,
      ),
    );
  }
}
