import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(
          title: "Shipping Address",
          buttonTitle: "Change",
          onPressed: () {},
        ),

        Text(
          "Manthan Sharma",
          style: Theme.of(context).textTheme.bodyLarge,
        ),

        const SizedBox(
          height: ESizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.phone,
              color: EColors.darkGrey,
              size: 16,
            ),
            const SizedBox(
              width: ESizes.spaceBtwItems,
            ),
            Text(
              "+91-318-8093993",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),

        const SizedBox(
          height: ESizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.location_history,
              color: EColors.darkGrey,
              size: 16,
            ),
            const SizedBox(
              width: ESizes.spaceBtwItems,
            ),
            Text(
              "South Liana, Maine 87988, USA",
              style: Theme.of(context).textTheme.bodyMedium,
              softWrap: true,
            ),
          ],
        ),
      ],
    );
  }
}
