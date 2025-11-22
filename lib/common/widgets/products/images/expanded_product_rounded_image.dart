import 'package:ecommerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ExpandedProductRoundedImage extends StatelessWidget {
  const ExpandedProductRoundedImage({
    super.key,
    required this.image,
    this.height = 100,
  });

  final String image;
  final double height;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = EHelperFunctions.isDarkMode(context);
    return Expanded(
      child: RoundedContainer(
        height: height,
        backgroundColor: isDarkMode ? EColors.darkerGrey : EColors.light,
        margin: const EdgeInsets.only(
          right: ESizes.sm,
        ),
        padding: const EdgeInsets.all(ESizes.md),
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
