import 'package:ecommerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/images/circular_image.dart';
import 'package:ecommerce_app/common/widgets/products/product_texts/product_price_text.dart';
import 'package:ecommerce_app/common/widgets/products/product_texts/product_title_text.dart';
import 'package:ecommerce_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/enums.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ProductMetadata extends StatelessWidget {
  const ProductMetadata({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = EHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            RoundedContainer(
              radius: ESizes.sm,
              backgroundColor: EColors.secondary.withValues(alpha: 0.8),
              padding: const EdgeInsets.symmetric(
                horizontal: ESizes.sm,
                vertical: ESizes.xs,
              ),
              child: Text(
                "25%",
                style: Theme.of(
                  context,
                ).textTheme.labelLarge!.apply(color: EColors.black),
              ),
            ),

            const SizedBox(
              width: ESizes.spaceBtwItems,
            ),

            Text(
              "\$250",
              style: Theme.of(context).textTheme.titleSmall!.apply(
                decoration: TextDecoration.lineThrough,
              ),
            ),
            const SizedBox(
              width: ESizes.spaceBtwItems,
            ),
            const ProductPriceText(
              price: "175",
              isLarge: true,
            ),
          ],
        ),

        const SizedBox(
          height: ESizes.spaceBtwItems / 1.5,
        ),

        const ProductTitleText(title: "Green Nike Sports Shirt"),

        const SizedBox(
          height: ESizes.spaceBtwItems / 1.5,
        ),

        Row(
          children: [
            const ProductTitleText(title: "Status"),

            const SizedBox(
              width: ESizes.spaceBtwItems / 1.5,
            ),
            Text(
              "In Stock",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems / 1.5,
        ),

        Row(
          children: [
            CircularImage(
              image: EImages.cosmeticsIcon,
              size: 32,
              overlayColor: isDarkMode ? EColors.white : EColors.black,
            ),
            const SizedBox(
              width: ESizes.spaceBtwItems / 2,
            ),
            const Expanded(
              child: BrandTitleWithVerificationIcon(
                title: "Nike",
                brandTextSize: TextSizes.medium,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
