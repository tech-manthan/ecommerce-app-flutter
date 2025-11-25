import 'package:ecommerce_app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce_app/common/widgets/images/rounded_image.dart';
import 'package:ecommerce_app/common/widgets/products/product_cards/product_horizontal_card.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        showBackArrow: true,
        title: Text("Sports"),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              const RoundedImage(
                imageUrl: EImages.banner4,
                width: double.infinity,
                applyImageRadius: true,
              ),

              const SizedBox(
                height: ESizes.spaceBtwSections,
              ),

              Column(
                children: [
                  SectionHeading(
                    title: "Sports Shirts",
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: ESizes.spaceBtwItems / 2,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: ESizes.spaceBtwItems,
                        );
                      },
                      itemBuilder: (context, index) {
                        return const ProductHorizontalCard();
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
