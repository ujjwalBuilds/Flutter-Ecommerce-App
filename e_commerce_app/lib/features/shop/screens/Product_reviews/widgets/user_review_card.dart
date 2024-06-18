import 'package:e_commerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/products/ratings/rating_indicator.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(TImages.userProfileImage1)),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text('Sara', style: Theme.of(context).textTheme.titleLarge),
            
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
            const SizedBox(height: TSizes.spaceBtwItems),


            /// Review
            Row(
              children: [
                const TRatingBarIndicator(rating: 4),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text('14 May, 2024', style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            const ReadMoreText(
              'The product is world class the stitching is perfect. It provides great comfort, also its Lightweighted. This is my go to shoe for all kind of chores. A perfect companion. Kudos NIKE Great Job!',
              trimLines: 1,
              trimMode: TrimMode.Line,
              trimCollapsedText: ' Show More',
              trimExpandedText: ' Show Less',
              moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
              lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
              ),

              const SizedBox(height: TSizes.spaceBtwItems),

              /// Company Review
              TRoundedContainer(
                backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
                child: Padding(
                  padding: const EdgeInsets.all(TSizes.md),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("ZipCart", style: Theme.of(context).textTheme.titleMedium),
                          Text('15 May, 2024', style: Theme.of(context).textTheme.bodyMedium),
                        ],
                      ),
                          const SizedBox(height: TSizes.spaceBtwItems),
                          const ReadMoreText(
                            'The product is world class the stitching is perfect. It provides great comfort, also its Lightweighted. This is my go to shoe for all kind of chores. A perfect companion. Kudos NIKE Great Job!',
                            trimLines: 1,
                            trimMode: TrimMode.Line,
                            trimCollapsedText: ' Show More',
                            trimExpandedText: ' Show Less',
                            moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
                            lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
                            ),
                    ],
                  ),
                ),
          ),
          const SizedBox(height: TSizes.spaceBtwSections),
      ],
    );
  }
}
