import 'package:ecommerce_app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:ecommerce_app/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:ecommerce_app/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/features/personalization/screens/address/address.dart';
import 'package:ecommerce_app/features/personalization/screens/profile/profile.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  CustomAppBar(
                    title: Text(
                      "Account",
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium!.apply(color: EColors.white),
                    ),
                  ),

                  UserProfileTile(
                    name: "Manthan Sharma",
                    email: "manthan@gmail.com",
                    image: EImages.user,
                    onPressed: () {
                      Get.to(() => const ProfileScreen());
                    },
                  ),

                  const SizedBox(
                    height: ESizes.spaceBtwSections,
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(
                ESizes.defaultSpace,
              ),
              child: Column(
                children: [
                  const SectionHeading(
                    title: "Account Settings",
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: ESizes.spaceBtwItems,
                  ),

                  SettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: "My Addresses",
                    subTitle: "Set shopping delivery addresses",
                    onTap: () {
                      Get.to(() => const AddressScreen());
                    },
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: "My Cart",
                    subTitle: "Add, remove products and move to checkout",
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: "My Orders",
                    subTitle: "In progress and Completed Orders",
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.bank,
                    title: "Bank Account",
                    subTitle: "Withdraw balances to registered bank account",
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: "My Coupons",
                    subTitle: "List of all discounted coupons",
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.notification,
                    title: "Notifications",
                    subTitle: "See any kind of notification message",
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: "Account Privacy",
                    subTitle: "Manage data usage and connected accounts",
                    onTap: () {},
                  ),

                  const SizedBox(
                    height: ESizes.spaceBtwSections,
                  ),
                  const SectionHeading(
                    title: "App Settings",
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: ESizes.spaceBtwItems,
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: "Load Data",
                    subTitle: "Upload Data to your Cloud Firebase",
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.location,
                    title: "Geolocation",
                    subTitle: "Set recommendation based on location",
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: "Safe Mode",
                    subTitle: "Search result is safe for all ages",
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.image,
                    title: "HD Imgae Quality",
                    subTitle: "Set image quality to be seen",
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),

                  const SizedBox(
                    height: ESizes.spaceBtwSections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text("Logout"),
                    ),
                  ),
                  const SizedBox(
                    height: ESizes.spaceBtwSections * 2.5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
