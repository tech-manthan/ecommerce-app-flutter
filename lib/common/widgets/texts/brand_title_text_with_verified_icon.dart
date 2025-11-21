import 'package:ecommerce_app/common/widgets/texts/brand_title_text.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/enums.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BrandTitleWithVerificationIcon extends StatelessWidget {
  const BrandTitleWithVerificationIcon({
    super.key,
    required this.title,
    this.textColor,
    this.iconColor = EColors.primary,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final Color? textColor, iconColor;
  final int maxLines;
  final TextAlign textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: BrandTitleText(
            title: title,
            color: textColor,
            textAlign: textAlign,
            maxLines: maxLines,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(
          width: ESizes.xs,
        ),
        Icon(
          Iconsax.verify5,
          color: iconColor,
          size: ESizes.iconXs,
        ),
      ],
    );
  }
}
