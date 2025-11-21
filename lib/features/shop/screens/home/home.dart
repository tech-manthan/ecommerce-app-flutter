import 'package:ecommerce_app/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:ecommerce_app/common/widgets/custom_shapes/container/search_container.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:ecommerce_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  HomeAppBar(),

                  SizedBox(
                    height: ESizes.spaceBtwSections,
                  ),

                  SearchContainer(
                    text: "Search in Store",
                  ),

                  SizedBox(
                    height: ESizes.spaceBtwSections,
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                      left: ESizes.defaultSpace,
                    ),
                    child: Column(
                      children: [
                        SectionHeading(
                          title: "Popular Categories",
                          showActionButton: false,
                          textColor: EColors.white,
                        ),

                        SizedBox(
                          height: ESizes.spaceBtwItems,
                        ),

                        HomeCategories(),
                      ],
                    ),
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
