// ignore_for_file: unused_import

import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/image_text_widgets/vertical_image_text.dart';
import 'package:e_commerce_app/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:e_commerce_app/features/authentication/controllers/home_controller.dart';
import 'package:e_commerce_app/features/authentication/screens/home/widgets/home_categories.dart';
import 'package:e_commerce_app/features/authentication/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce_app/features/shop/screens/All_products/all_products.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/search_container.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/authentication/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// HEADER
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // Appbar
                  const THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Searchbar
                  const TSearchContainer(text: 'Search in Store'),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Categories
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        // Headings
                        TSectionHeading(
                          title: 'Popular Categories',
                          onPressed: (){} ,
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems),

                        // Under Heading Categories
                        const THomeCategories(),
                      ],
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            ///Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// Promo Slider -- For advt/banner pics
                  const TPromoSlider(banners: [TImages.promoBanner1, TImages.promoBanner2, TImages.promoBanner3]),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// -- Heading
                  TSectionHeading(title: 'Popular Products', onPressed: () => Get.to(() => const AllProducts()) ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  /// Popular Products -- Home Page Products
                  TGridLayout(itemCount: 12, itemBuilder: (_, index) => const TProductCardVertical()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
