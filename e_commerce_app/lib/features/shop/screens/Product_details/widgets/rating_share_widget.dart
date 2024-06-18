
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TRatingAndShare extends StatelessWidget {
  const TRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// Rating
        Row(
          children: [
            const Icon(Iconsax.star5, color: Colors.amber,size: 24),
            const SizedBox(width: TSizes.spaceBtwItems / 2),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: '4.8', style: Theme.of(context).textTheme.bodyMedium),
                  const TextSpan(text: '(168)'),
                ]
              )
            )
          ],
        ),
        /// Share Button
        IconButton(onPressed: (){}, icon: const Icon(Icons.share, size: TSizes.iconMd))
      ],
    );
  }
}
