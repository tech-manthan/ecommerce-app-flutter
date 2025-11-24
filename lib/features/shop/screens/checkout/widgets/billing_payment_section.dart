import 'package:ecommerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BillingPaymentSection extends StatelessWidget {
  const BillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeading(
          title: "Payment Method",
          buttonTitle: "Change",
          onPressed: () {},
        ),

        const SizedBox(
          height: ESizes.spaceBtwItems / 2,
        ),

        Row(
          children: [
            const RoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: EColors.light,
              padding: EdgeInsets.all(ESizes.sm),
              child: Image(
                image: AssetImage(EImages.paypal),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              width: ESizes.spaceBtwItems / 2,
            ),
            Text(
              "Paypal",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ],
    );
  }
}
