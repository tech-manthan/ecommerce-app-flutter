import 'package:ecommerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = EHelperFunctions.isDarkMode(context);
    return RoundedContainer(
      padding: const EdgeInsets.all(ESizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? EColors.primary.withValues(alpha: 0.5)
          : EColors.transparent,
      borderColor: selectedAddress
          ? EColors.transparent
          : isDarkMode
          ? EColors.darkerGrey
          : EColors.grey,

      margin: const EdgeInsets.only(bottom: ESizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? isDarkMode
                        ? EColors.light
                        : EColors.dark.withValues(alpha: 0.6)
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "John Doe",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: ESizes.sm / 2,
              ),
              const Text(
                "(+123) 456 7890",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: ESizes.sm / 2,
              ),
              const Text(
                "82356 Timmy Coves, South Liana, Maine, 87665, USA",
                softWrap: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
