import 'package:ecommerce_app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        showBackArrow: true,
        title: Text(
          "Popular Products",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            ESizes.defaultSpace,
          ),
          child: Column(
            children: [
              DropdownButtonFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.sort),
                ),
                onChanged: (value) {},
                items:
                    [
                          "Name",
                          "Higher Price",
                          "Lower Price",
                          "Sale",
                          "Newest",
                          "Popularity",
                        ]
                        .map(
                          (item) => DropdownMenuItem(
                            value: item,
                            child: Text(item),
                          ),
                        )
                        .toList(),
              ),

              const SizedBox(
                height: ESizes.spaceBtwSections,
              ),

              GridLayout(
                itemCount: 17,
                itemBuilder: (_, index) {
                  return const ProductCardVertical();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
