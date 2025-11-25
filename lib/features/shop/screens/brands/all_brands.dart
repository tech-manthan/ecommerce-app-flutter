import 'package:ecommerce_app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce_app/common/widgets/brands/brand_cards/brand_card.dart';
import 'package:ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/features/shop/screens/brands/brand_products.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = EHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: const CustomAppBar(
        showBackArrow: true,
        title: Text(
          "Brand",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            ESizes.defaultSpace,
          ),
          child: Column(
            children: [
              const SectionHeading(
                title: "Brands",
                showActionButton: false,
              ),
              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),
              GridLayout(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder: (_, index) {
                  return BrandCard(
                    showBorder: true,
                    brandName: "Nike",
                    brandImage: EImages.clothIcon,
                    subTitle: "256 Products",
                    overlayColor: isDarkMode ? EColors.white : EColors.black,
                    onTap: () {
                      Get.to(() => const BrandProductsScreen());
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
