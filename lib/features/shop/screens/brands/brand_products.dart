import 'package:ecommerce_app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce_app/common/widgets/brands/brand_cards/brand_card.dart';
import 'package:ecommerce_app/common/widgets/products/sortable/sortable_products.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BrandProductsScreen extends StatelessWidget {
  const BrandProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = EHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: const CustomAppBar(
        showBackArrow: true,
        title: Text(
          "Nike",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            ESizes.defaultSpace,
          ),
          child: Column(
            children: [
              BrandCard(
                showBorder: true,
                brandName: "Nike",
                brandImage: EImages.clothIcon,
                subTitle: "256 Products",
                overlayColor: isDarkMode ? EColors.white : EColors.black,
                onTap: () {
                  Get.to(() => const BrandProductsScreen());
                },
              ),

              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),

              const SortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
