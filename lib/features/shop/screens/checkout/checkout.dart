import 'package:ecommerce_app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerce_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:ecommerce_app/common/widgets/products/cart/coupon_code.dart';
import 'package:ecommerce_app/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:ecommerce_app/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:ecommerce_app/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:ecommerce_app/navigation_menu.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = EHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          "Order Review",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            ESizes.defaultSpace,
          ),
          child: Column(
            children: [
              const CartItems(
                showButtons: false,
                isScrollable: false,
              ),
              const SizedBox(
                height: ESizes.spaceBtwSections,
              ),

              const CouponCode(),
              const SizedBox(
                height: ESizes.spaceBtwSections,
              ),

              RoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(ESizes.md),
                backgroundColor: isDarkMode ? EColors.black : EColors.white,
                child: const Column(
                  children: [
                    BillingAmountSection(),

                    SizedBox(
                      height: ESizes.spaceBtwItems,
                    ),
                    Divider(),
                    SizedBox(
                      height: ESizes.spaceBtwItems,
                    ),

                    BillingPaymentSection(),
                    SizedBox(
                      height: ESizes.spaceBtwItems,
                    ),

                    BillingAddressSection(),
                    SizedBox(
                      height: ESizes.spaceBtwItems,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {
            Get.to(
              () => SuccessScreen(
                image: EImages.successfulPaymentIcon,
                title: "Payment Success",
                subTitle: "Your item will be shipped soon!",
                onPressed: () {
                  Get.offAll(() => const NavigationMenu());
                },
              ),
            );
          },
          child: const Text("Checkout \$256.0"),
        ),
      ),
    );
  }
}
