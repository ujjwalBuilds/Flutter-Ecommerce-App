import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce_app/common/widgets/products/products_cards/product_card_horizontol.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(title: Text('Sports'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              const TRoundedImage(imageUrl: TImages.promoBanner3, width: double.infinity, height: null, applyImageRadius: true),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Sub-Categories
              Column(
                children: [
                  /// Heading
                  TSectionHeading(title: 'Sports Shoes', onPressed: (){}),
                  const SizedBox(height: TSizes.spaceBtwSections / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      separatorBuilder: (context, index) => const SizedBox(width: TSizes.spaceBtwItems),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => const TProductCardHorizontal()),
                  ),
                ],
              )



            ],
          ),
          ),
      ),
    );
  }
}