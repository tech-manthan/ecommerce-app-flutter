import 'package:ecommerce_app/common/widgets/brands/brand_cards/brand_card.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/products/images/expanded_product_rounded_image.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class BrandShowCase extends StatelessWidget {
  const BrandShowCase({
    super.key,
    required this.brandImage,
    required this.images,
    required this.brandName,
    required this.brandSubtitle,
    this.onTap,
  });

  final String brandImage;
  final String brandName;
  final String brandSubtitle;
  final VoidCallback? onTap;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = EHelperFunctions.isDarkMode(context);

    return RoundedContainer(
      showBorder: true,
      borderColor: EColors.darkGrey,
      backgroundColor: EColors.transparent,
      margin: const EdgeInsets.only(
        bottom: ESizes.spaceBtwItems,
      ),
      padding: const EdgeInsets.all(ESizes.md),
      child: Column(
        children: [
          BrandCard(
            brandName: brandName,
            subTitle: brandSubtitle,
            brandImage: brandImage,
            overlayColor: isDarkMode ? EColors.white : EColors.black,
            onTap: onTap,
          ),

          const SizedBox(
            height: ESizes.spaceBtwItems,
          ),

          Row(
            children: images
                .map((image) => ExpandedProductRoundedImage(image: image))
                .toList(),
          ),
        ],
      ),
    );
  }
}
