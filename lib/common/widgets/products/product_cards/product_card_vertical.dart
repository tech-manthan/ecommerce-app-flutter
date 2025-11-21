import 'package:ecommerce_app/common/styles/shadows.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/icons/circular_icon.dart';
import 'package:ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:ecommerce_app/common/widgets/products/product_texts/product_price_text.dart';
import 'package:ecommerce_app/common/widgets/products/product_texts/product_title_text.dart';
import 'package:ecommerce_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = EHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [EShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(ESizes.productImageRadius),
          color: isDarkMode ? EColors.darkerGrey : EColors.white,
        ),
        child: Column(
          children: [
            RoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(ESizes.sm),
              backgroundColor: isDarkMode ? EColors.dark : EColors.light,
              child: Stack(
                children: [
                  const RoundedImage(
                    imageUrl: EImages.productImage1,
                    applyImageRadius: true,
                  ),

                  Positioned(
                    top: 12,
                    child: RoundedContainer(
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
                  ),

                  Positioned(
                    top: 0,
                    right: 0,
                    child: CircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: ESizes.spaceBtwItems / 2,
            ),

            const Padding(
              padding: EdgeInsetsGeometry.only(
                left: ESizes.sm,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(
                    title: "Green Nike Air Shoes",
                    smallSize: true,
                  ),
                  SizedBox(
                    height: ESizes.spaceBtwItems / 2,
                  ),
                  BrandTitleWithVerificationIcon(title: "Nike"),
                ],
              ),
            ),

            const Spacer(),

            Padding(
              padding: const EdgeInsets.only(left: ESizes.sm),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ProductPriceText(
                    price: "35.5",
                  ),

                  Container(
                    decoration: const BoxDecoration(
                      color: EColors.dark,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(ESizes.cardRadiusMd),
                        bottomRight: Radius.circular(
                          ESizes.productImageRadius,
                        ),
                      ),
                    ),
                    child: const SizedBox(
                      width: ESizes.iconLg * 1.2,
                      height: ESizes.iconLg * 1.2,

                      child: Center(
                        child: Icon(
                          Iconsax.add,
                          color: EColors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
