import 'package:ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:ecommerce_app/common/widgets/products/product_texts/product_title_text.dart';
import 'package:ecommerce_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = EHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        RoundedImage(
          imageUrl: EImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(ESizes.sm),
          backgroundColor: isDarkMode ? EColors.darkerGrey : EColors.white,
        ),

        const SizedBox(
          width: ESizes.spaceBtwItems,
        ),

        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BrandTitleWithVerificationIcon(title: "Nike"),
              const ProductTitleText(
                title: "Black Sports Shoes",
                maxLines: 1,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Color ",
                          style: Theme.of(
                            context,
                          ).textTheme.bodySmall,
                        ),
                        TextSpan(
                          text: "Green ",
                          style: Theme.of(
                            context,
                          ).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Size ",
                          style: Theme.of(
                            context,
                          ).textTheme.bodySmall,
                        ),
                        TextSpan(
                          text: "UK 08",
                          style: Theme.of(
                            context,
                          ).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
