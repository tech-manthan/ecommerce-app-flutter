import 'package:ecommerce_app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:ecommerce_app/common/widgets/icons/circular_icon.dart';
import 'package:ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = EHelperFunctions.isDarkMode(context);

    return CurvedEdgeWidget(
      child: Container(
        color: isDarkMode ? EColors.darkerGrey : EColors.white,
        child: Stack(
          children: [
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(
                  ESizes.productImageRadius * 2,
                ),
                child: Center(
                  child: Image(
                    image: AssetImage(EImages.productImage3),
                  ),
                ),
              ),
            ),

            Positioned(
              left: ESizes.defaultSpace,
              right: 0,
              bottom: 30,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, _) {
                    return const SizedBox(
                      width: ESizes.spaceBtwItems,
                    );
                  },
                  itemBuilder: (_, index) {
                    return RoundedImage(
                      width: 80,
                      backgroundColor: isDarkMode
                          ? EColors.dark
                          : EColors.light,
                      border: Border.all(color: EColors.primary),
                      padding: const EdgeInsets.all(ESizes.sm),
                      imageUrl: EImages.productImage5,
                    );
                  },
                ),
              ),
            ),

            CustomAppBar(
              showBackArrow: true,
              actions: [
                CircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                  backgroundColor: isDarkMode ? EColors.dark : EColors.light,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
