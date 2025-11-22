import 'package:ecommerce_app/common/widgets/brands/brand_cards/brand_showcase.dart';
import 'package:ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandCategoryData {
  final String image;
  final String name;
  final String extraData;
  final List<String> brandProducImages;
  final VoidCallback? onTap;

  BrandCategoryData({
    required this.image,
    required this.name,
    required this.extraData,
    required this.brandProducImages,
    this.onTap,
  });
}

class CategoryTab extends StatelessWidget {
  const CategoryTab({
    super.key,
    required this.brands,
  });

  final List<BrandCategoryData> brands;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),

          child: Column(
            children: [
              ...brands.map(
                (brand) => BrandShowCase(
                  brandImage: brand.image,
                  images: brand.brandProducImages,
                  brandName: brand.name,
                  brandSubtitle: brand.extraData,
                  onTap: brand.onTap,
                ),
              ),
              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),

              SectionHeading(
                title: "You might like",
                onPressed: () {},
              ),
              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),

              GridLayout(
                itemCount: 4,
                itemBuilder: (_, index) {
                  return const ProductCardVertical();
                },
              ),
              const SizedBox(
                height: ESizes.spaceBtwSections,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
