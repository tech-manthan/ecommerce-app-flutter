import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TermsAndConditionCheckbox extends StatelessWidget {
  const TermsAndConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = EHelperFunctions.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
          height: 24,
          width: 24,
          child: Checkbox(
            value: true,
            onChanged: (value) {},
          ),
        ),
        const SizedBox(
          width: ESizes.spaceBtwItems,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${ETexts.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: '${ETexts.privacyPolicy} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: isDarkMode ? EColors.white : EColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: isDarkMode ? EColors.white : EColors.primary,
                ),
              ),
              TextSpan(
                text: '${ETexts.and} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: '${ETexts.termsOfUse}.',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: isDarkMode ? EColors.white : EColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: isDarkMode ? EColors.white : EColors.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
