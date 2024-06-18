
import 'package:e_commerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/products/brandcard/brand_card.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          /// Brand with Products Count
          const TBrandCard(showBorder: false),
          const SizedBox(height: TSizes.spaceBtwItems),

          /// Brand Top 3 Product Images
          Row(children: images.map((image) => brandTopProductImagesWidget(image, context)).toList())
        ],
      ),
    );
  }
}

Widget brandTopProductImagesWidget(String image, context) {
  return Expanded(
      child: TRoundedContainer(
    height: 100,
    padding: const EdgeInsets.all(TSizes.md),
    margin: const EdgeInsets.only(right: TSizes.sm),
    backgroundColor: THelperFunctions.isDarkMode(context)
        ? TColors.darkerGrey
        : TColors.light,
    child: Image(fit: BoxFit.contain, image: AssetImage(image)),
  )
  );
}
