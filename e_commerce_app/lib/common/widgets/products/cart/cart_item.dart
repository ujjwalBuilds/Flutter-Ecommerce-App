
import 'package:e_commerce_app/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
    children: [
      /// Image
        TRoundedImage(
          imageUrl: TImages.productImage1, 
          width: 60, 
          height: 60, 
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkerGrey : TColors.light,
          ),
      const SizedBox(width: TSizes.spaceBtwItems),
      
      /// Title , Price & Size
      Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(child: TProductTitleText(title: 'Green Nike Air Shoes' , maxLines: 1, style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold))),
            const TBrandTitleWithVerifiedIcon(title: 'Nike'),
        
            /// Attributes
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: 'Color :', style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: 'Green ', style: Theme.of(context).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'Size :', style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: 'UK 34', style: Theme.of(context).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold)),
                ]
              )
            )
        
        
              ],
            ),
      ),
        ],
      );
  }
}