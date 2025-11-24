import 'package:ecommerce_app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce_app/common/widgets/images/circular_image.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            ESizes.defaultSpace,
          ),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CircularImage(
                      image: EImages.user,
                      size: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Change Profile Picture"),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: ESizes.spaceBtwItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),

              const SectionHeading(
                title: "Profile Information",
                showActionButton: false,
              ),
              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),

              ProfileMenu(
                title: "Name",
                value: "Manthan Sharma",
                onPressed: () {},
              ),
              ProfileMenu(
                title: "Usernam",
                value: "manthan0908",
                onPressed: () {},
              ),

              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),
              const Divider(),
              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),

              const SectionHeading(
                title: "Personal Information",
                showActionButton: false,
              ),
              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),

              ProfileMenu(
                title: "User ID",
                value: "0908",
                icon: Iconsax.copy,
                onPressed: () {},
              ),

              ProfileMenu(
                title: "E-mail",
                value: "manthan@gmail.com",
                onPressed: () {},
              ),
              ProfileMenu(
                title: "Phone Number",
                value: "+91 7444444446",
                onPressed: () {},
              ),
              ProfileMenu(
                title: "Gender",
                value: "Male",
                onPressed: () {},
              ),
              ProfileMenu(
                title: "Date of Birth",
                value: "16 Sep, 2001",
                onPressed: () {},
              ),

              const Divider(),
              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Close Account",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
