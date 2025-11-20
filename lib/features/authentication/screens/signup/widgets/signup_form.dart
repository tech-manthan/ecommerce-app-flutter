import 'package:ecommerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerce_app/features/authentication/screens/signup/widgets/terms_and_condition_checkbox.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';

import 'package:flutter/material.dart';
import 'package:flutter_intl_phone_field/flutter_intl_phone_field.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: ESizes.spaceBtwSections,
        ),
        child: Column(
          children: [
            Row(
              spacing: ESizes.spaceBtwInputFields,
              children: [
                /// Firstname
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                      labelText: ETexts.firstName,
                      prefixIcon: Icon(Iconsax.user),
                    ),
                  ),
                ),

                /// Lastname
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                      labelText: ETexts.lastName,
                      prefixIcon: Icon(Iconsax.user),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: ESizes.spaceBtwInputFields,
            ),

            /// Username
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Iconsax.user_edit,
                ),
                labelText: ETexts.username,
              ),
            ),
            const SizedBox(
              height: ESizes.spaceBtwInputFields,
            ),

            /// Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Iconsax.direct_right,
                ),
                labelText: ETexts.email,
              ),
            ),
            const SizedBox(
              height: ESizes.spaceBtwInputFields,
            ),

            /// Phone Number
            const IntlPhoneField(
              initialCountryCode: 'IN',
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Iconsax.call,
                ),
                labelText: ETexts.phoneNo,
              ),
            ),
            const SizedBox(
              height: ESizes.spaceBtwInputFields,
            ),

            /// Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Iconsax.password_check,
                ),
                suffixIcon: Icon(
                  Iconsax.eye_slash,
                ),
                labelText: ETexts.password,
              ),
            ),
            const SizedBox(
              height: ESizes.spaceBtwSections,
            ),

            /// Terms & Condition
            const TermsAndConditionCheckbox(),

            const SizedBox(
              height: ESizes.spaceBtwSections,
            ),

            /// Sign Up Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const VerifyEmailScreen());
                },
                child: const Text(ETexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
