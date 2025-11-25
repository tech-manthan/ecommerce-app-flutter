import 'package:ecommerce_app/features/shop/screens/order/widgets/order_item_card.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderListItems extends StatelessWidget {
  const OrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 4,
      separatorBuilder: (_, _) {
        return const SizedBox(
          height: ESizes.spaceBtwItems,
        );
      },

      itemBuilder: (_, index) {
        return const OrderItemCard();
      },
    );
  }
}
