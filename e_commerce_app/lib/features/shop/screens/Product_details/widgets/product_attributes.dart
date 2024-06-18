import 'package:e_commerce_app/common/widgets/chips/choice_chip.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// -- Selected Attribute Pricing & Description
        TRoundedContainer(

          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              ///Title Price and Stock Status
              Row(
                children: [
                  const TSectionHeading(title: 'Variation', showActionButton: false),
                  const SizedBox(width: TSizes.spaceBtwItems),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Row(
                    children: [
                      const TProductTitleText(title: 'Price : ', smallSize: true),
                      const SizedBox(width: TSizes.spaceBtwItems),
                      ///Actual Price
                      Text('\$50.65', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
                      const SizedBox(width: TSizes.spaceBtwItems / 2),

                      ///Sale Price
                      const TProductPriceText(price: '35.00'),
                        ],
                      ),

                      /// Stock
                      Row(
                        children: [
                          const TProductTitleText(title: 'Stock : ', smallSize: true),
                          Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
                        ],
                      )
                    ],
                  ),
                ],
              ),

              /// Variation Description
              const TProductTitleText(
                title: 'This is the Description of the Product and it can go upto max 4 lines.',
                smallSize: true,
                maxLines: 4,
                
                ),
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),


        /// -- Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Colors', showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
              TChoiceChip(text: 'Green', selected: true, onSelected: (value){}),
              TChoiceChip(text: 'Blue', selected: false, onSelected: (value){}),
              TChoiceChip(text: 'Yellow', selected: false, onSelected: (value){}),

              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Size', showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'EU 34', selected: true, onSelected: (value){}),
                TChoiceChip(text: 'EU 36', selected: false, onSelected: (value){}),
                TChoiceChip(text: 'EU 38', selected: false, onSelected: (value){}),

              ],
            )
          ],
        ),
        // const Column(
        //   children: [
        //     TSectionHeading(title: 'Colors'),
        //     SizedBox(height: TSizes.spaceBtwItems / 2),
        //     TChoiceChip(text: 'Green', selected: true),
        //     TChoiceChip(text: 'Blue', selected: false),
        //     TChoiceChip(text: 'Yellow', selected: false),
        //   ],
        // ),
      ],
    );
  }
}
