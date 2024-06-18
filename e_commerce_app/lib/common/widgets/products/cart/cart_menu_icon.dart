// import 'package:e_commerce_app/utils/constants/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';
// class TCartCounterIcon extends StatelessWidget {
//   const TCartCounterIcon({
//     super.key,
//     required this.onPressed, required this.iconColor,
//   });

//   final Color iconColor;
//   final VoidCallback onPressed;

//   @override
//   Widget build(BuildContext context) {
//     print('TCartCounterIcon built'); // Debug print
//     return Stack(
//       children: [
//         IconButton(
//             onPressed: () {},
//             icon: const Icon(Iconsax.shopping_bag, color: TColors.white)),
//         Positioned(
//           right: 0,
//           child: Container(
//             width: 18,
//             height: 18,
//             decoration: BoxDecoration(
//               color: TColors.black.withOpacity(0.5),
//               borderRadius: BorderRadius.circular(100),
//             ),
//             child: Center(
//                 child: Text('2',
//                     style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.white, fontSizeFactor: 0.8))),
//           ),
//         ),
//       ],
//     );
//   }
// }


import 'package:e_commerce_app/features/shop/screens/Cart/cart.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key,
    // this.onPressed,
    this.iconColor,
  });

  final Color? iconColor;
  // final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    print('TCartCounterIcon built'); // Debug print
    return Stack(
      children: [
        IconButton(
          onPressed: () => Get.to(() => const CartScreen()), // Provide a default empty function if onPressed is null
          icon: Icon(Iconsax.shopping_bag, color: iconColor ?? TColors.white), // Use a default color if iconColor is null
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: TColors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                      color: TColors.white,
                      fontSizeFactor: 0.8,
                    ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
