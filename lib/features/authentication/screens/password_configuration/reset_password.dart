import 'package:ecommerce_app/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerce_app/features/authentication/screens/login/login.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = EHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: isDarkMode ? EColors.dark : EColors.light,
        actions: [
          IconButton(
            onPressed: () {
              Get.offAll(() => const LoginScreen());
            },
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
        child: Column(
          children: [
            Image(
              width: EHelperFunctions.screenWidth() * 0.6,
              image: const AssetImage(EImages.deliveredEmailIllustration),
            ),

            const SizedBox(
              height: ESizes.spaceBtwSections,
            ),

            Text(
              ETexts.changeYourPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),

            const SizedBox(
              height: ESizes.spaceBtwItems,
            ),

            Text(
              ETexts.changeYourPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),

            const SizedBox(
              height: ESizes.spaceBtwSections,
            ),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.offAll(() => const LoginScreen());
                },

                child: const Text(ETexts.done),
              ),
            ),

            const SizedBox(
              height: ESizes.spaceBtwItems,
            ),

            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: const Text(ETexts.resendEmail),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
