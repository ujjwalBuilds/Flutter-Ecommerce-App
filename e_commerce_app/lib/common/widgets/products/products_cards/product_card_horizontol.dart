import 'package:e_commerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/icons/t_circular_icon.dart';
import 'package:e_commerce_app/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce_app/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        // boxShadow: [TShadowStyle.horizontalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkerGrey : TColors.grey.withOpacity(0.4),
      ),
      child: Row(
        children: [
          /// Thumbnail
          TRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                /// -- Thumbnail Image
                const SizedBox(
                  height: 120,
                  width: 120,
                  child: TRoundedImage(imageUrl: TImages.productImage2, applyImageRadius: true)),
                // const SizedBox(height: TSizes.spaceBtwItems / 2),

                /// -- Sale Tage (i.e. 25% off)
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black)),
                    ),
                  ),

                  /// -- Favourite Icon Button (Love / Like Button)
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(icon: Iconsax.heart5, color: Colors.red),
                  ),
              ],
               
            ),
          ),
           
          /// Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
              child: Column(
                children: [
                const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(title: 'Air Jordan 11', smallSize: true),
                  SizedBox(height: TSizes.spaceBtwItems / 2),
                  TBrandTitleWithVerifiedIcon(title: 'Nike'),
                  ],
                ),
              
                const Spacer(),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    /// Pricing
                    const Flexible(child: TProductPriceText(price: '35.00')),

                    /// Add to Cart Button
                  Container(
                    decoration: const BoxDecoration(
                        color: TColors.dark,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(TSizes.cardRadiusMd),
                          bottomRight: Radius.circular(TSizes.productImageRadius),
                          ),
                        ),
                    child: const SizedBox(
                        width: TSizes.iconLg * 1.2,
                        height: TSizes.iconLg * 1.2,
                        child: Center(child: Icon(Iconsax.add, color: TColors.white)),
                        ),
                      ),

                  ],
                )
              ],
              
              ),
            ),

          )


        ],
      ),
    );
  }
}
