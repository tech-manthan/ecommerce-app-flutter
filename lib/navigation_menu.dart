import 'package:ecommerce_app/features/shop/screens/home/home.dart';
import 'package:ecommerce_app/features/shop/screens/store/store.dart';
import 'package:ecommerce_app/features/shop/screens/wishlist/wishlist.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final isDarkMode = EHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          backgroundColor: isDarkMode ? EColors.black : EColors.white,
          indicatorColor: isDarkMode
              ? EColors.white.withValues(alpha: 0.1)
              : EColors.black.withValues(alpha: 0.1),
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) {
            controller.selectedIndex.value = index;
          },
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
            NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
            NavigationDestination(icon: Icon(Iconsax.heart), label: "Wishlist"),
            NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
          ],
        ),
      ),
      body: Obx(
        () {
          return controller.screens[controller.selectedIndex.value];
        },
      ),
    );
  }
}

class NavigationController extends GetxController {
  static NavigationController get instance => Get.find();

  final RxInt selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const WishlistScreen(),
    Container(
      color: Colors.orange,
    ),
  ];
}
