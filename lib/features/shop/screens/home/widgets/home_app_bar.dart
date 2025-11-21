import 'package:ecommerce_app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ETexts.homeAppbarTitle,
            style: Theme.of(context).textTheme.labelMedium!.apply(
              color: EColors.grey,
            ),
          ),
          Text(
            ETexts.homeAppbarSubTitle,
            style: Theme.of(context).textTheme.headlineSmall!.apply(
              color: EColors.white,
              fontSizeFactor: 0.8,
            ),
          ),
        ],
      ),
      actions: [
        CartMenuIcon(
          onPressed: () {},
          iconColor: EColors.white,
          badgeColor: EColors.black.withValues(alpha: 0.5),
          badgeTextColor: EColors.white,
        ),
      ],
    );
  }
}
