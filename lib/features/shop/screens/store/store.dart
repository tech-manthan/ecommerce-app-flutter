import 'package:ecommerce_app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce_app/common/widgets/brands/brand_cards/featured_brand_card.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/container/search_container.dart';
import 'package:ecommerce_app/common/widgets/images/circular_image.dart';
import 'package:ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerce_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/enums.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = EHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          "Store",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CartMenuIcon(
            onPressed: () {},
            iconColor: isDarkMode ? EColors.white : EColors.black,
            badgeColor: isDarkMode
                ? EColors.white.withValues(alpha: 0.5)
                : EColors.black.withValues(alpha: 0.5),
            badgeTextColor: isDarkMode ? EColors.white : EColors.black,
          ),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: isDarkMode ? EColors.dark : EColors.light,
              expandedHeight: 440,

              flexibleSpace: Padding(
                padding: const EdgeInsets.all(
                  ESizes.defaultSpace,
                ),
                child: ListView(
                  shrinkWrap: true,

                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    const SizedBox(
                      height: ESizes.spaceBtwItems,
                    ),
                    const SearchContainer(
                      text: "Search in Store",
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(
                      height: ESizes.spaceBtwItems,
                    ),

                    SectionHeading(
                      title: "Featured Brands",
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: ESizes.spaceBtwItems / 1.5,
                    ),

                    GridLayout(
                      itemCount: 4,
                      mainAxisExtent: 80,
                      itemBuilder: (_, index) {
                        return FeaturedBrandCard(
                          brandName: "Nike",
                          brandImage: EImages.clothIcon,
                          subTitle: "256 Products",
                          onTap: () {},
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
