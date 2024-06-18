import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/products/ratings/rating_indicator.dart';
import 'package:e_commerce_app/features/shop/screens/Product_reviews/widgets/rating_progress_indicator.dart';
import 'package:e_commerce_app/features/shop/screens/Product_reviews/widgets/user_review_card.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -- Appbar
      appBar: const TAppBar(title: Text('Ratings & Reviews'), showBackArrow: true),

      /// -- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "Ratings & Reviews are verified and are from people who use the same type of device that you use."),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Overall Product Ratings
              const TOverallProductRating(),

              const TRatingBarIndicator(rating: 3.5),
              Text('16,556', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// User Reviews List
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
