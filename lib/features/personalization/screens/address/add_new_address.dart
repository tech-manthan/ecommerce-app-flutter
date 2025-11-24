import 'package:ecommerce_app/common/widgets/appbar/custom_appbar.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_intl_phone_field/flutter_intl_phone_field.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        showBackArrow: true,
        title: Text("Add new Address"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Iconsax.user,
                  ),
                  labelText: "Name",
                ),
              ),
              const SizedBox(
                height: ESizes.spaceBtwInputFields,
              ),
              const IntlPhoneField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Iconsax.mobile,
                  ),
                  labelText: "Phone Number",
                ),
              ),
              const SizedBox(
                height: ESizes.spaceBtwInputFields,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Iconsax.building_31,
                        ),
                        labelText: "Street",
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: ESizes.spaceBtwInputFields,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Iconsax.code,
                        ),
                        labelText: "Postal Code",
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: ESizes.spaceBtwInputFields,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Iconsax.building,
                        ),
                        labelText: "City",
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: ESizes.spaceBtwInputFields,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Iconsax.activity,
                        ),
                        labelText: "State",
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: ESizes.spaceBtwInputFields,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Iconsax.global,
                  ),
                  labelText: "Country",
                ),
              ),
              const SizedBox(
                height: ESizes.defaultSpace,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Save"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
