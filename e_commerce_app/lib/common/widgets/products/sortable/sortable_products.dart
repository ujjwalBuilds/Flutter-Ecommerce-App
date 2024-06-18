
import 'package:e_commerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Dropdown
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value){},
          items: ['Name', 'Low to High' , 'High to Low', 'Most Sold', 'Newest', 'Popularity'].map((option) => DropdownMenuItem(value: option,child: Text(option))).toList(),
          ),
          const SizedBox(height: TSizes.spaceBtwSections),
          /// Products
          TGridLayout(itemCount: 8, itemBuilder: (_, index) => const TProductCardVertical() )
      ],
    );
  }
}