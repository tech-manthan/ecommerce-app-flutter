import 'package:ecommerce_app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce_app/features/personalization/screens/address/add_new_address.dart';
import 'package:ecommerce_app/features/personalization/screens/address/widgets/single_address.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: EColors.primary,
        onPressed: () {
          Get.to(() => const AddNewAddressScreen());
        },
        child: const Icon(
          Iconsax.add,
          color: EColors.white,
        ),
      ),
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          "Addresses",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              SingleAddress(
                selectedAddress: true,
              ),
              SingleAddress(
                selectedAddress: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
