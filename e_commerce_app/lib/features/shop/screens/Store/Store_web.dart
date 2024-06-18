// store_web.dart

import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/appbar/tabbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/search_container.dart';
import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/brandcard/brand_card.dart';
import 'package:e_commerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/Brand/all_brands.dart';
import 'package:e_commerce_app/features/shop/screens/Store/category_tab.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, // This is the number of tabs.
      child: Scaffold(
        appBar: TAppBar(
          title: Text('Store',style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w600),),
          actions: const [
            TCartCounterIcon(iconColor: TColors.black),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            // These are the slivers that show up in the "outer" scroll view.
            return [
              SliverOverlapAbsorber(
                handle:NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  expandedHeight: 440,
                  forceElevated: innerBoxIsScrolled,
                  backgroundColor: THelperFunctions.isDarkMode(context)? TColors.black : TColors.white,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        /// -- Search Bar
                        const SizedBox(height: TSizes.spaceBtwItems),
                        const TSearchContainer(text: 'Search in Store',showBorder: true,showBackground: false,padding: EdgeInsets.zero),
                        const SizedBox(height: TSizes.spaceBtwSections),
                
                        /// -- Featured Brands
                        TSectionHeading(title: 'Featured Brands', onPressed: () => Get.to(() => const AllBrandsScreen())),
                        const SizedBox(height: TSizes.spaceBtwItems / 1.5),
                
                        TGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            // In the backend Tutorial we will pass the each Brand & onPress Event also.
                            return const TBrandCard(showBorder: true);
                          },
                        ),
                      ],
                    ),
                  ),

                  bottom: const TTabBar(
                    tabs: [
                      Tab(child: Text('Sports')),
                      Tab(child: Text('Furniture')),
                      Tab(child: Text('Electronics')),
                      Tab(child: Text('Clothes')),
                      Tab(child: Text('Cosmetics')),
                    ],
                  ),
                  // ),
                ),
              ),
            ];
          },

          body: const TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
