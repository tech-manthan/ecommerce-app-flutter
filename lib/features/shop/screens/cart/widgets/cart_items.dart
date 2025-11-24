import 'package:ecommerce_app/common/widgets/products/buttons/product_quantity_buttons.dart';
import 'package:ecommerce_app/common/widgets/products/cart/cart_item.dart';
import 'package:ecommerce_app/common/widgets/products/product_texts/product_price_text.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
    this.showButtons = true,
    this.isScrollable = true,
  });

  final bool showButtons;
  final bool isScrollable;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: isScrollable ? null : const NeverScrollableScrollPhysics(),
      itemCount: 10,
      separatorBuilder: (_, _) {
        return const SizedBox(
          height: ESizes.spaceBtwSections,
        );
      },
      itemBuilder: (_, index) {
        return Column(
          children: [
            const CartItem(),
            if (showButtons)
              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),
            if (showButtons)
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 70,
                      ),
                      ProductQuantityButtons(),
                    ],
                  ),
                  ProductPriceText(price: "256"),
                ],
              ),
          ],
        );
      },
    );
  }
}
