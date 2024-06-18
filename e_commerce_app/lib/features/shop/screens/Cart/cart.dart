import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/features/shop/screens/Cart/widgets/cart_items.dart';
import 'package:e_commerce_app/features/shop/screens/Checkout/checkout.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true,title: Text('Cart', style: Theme.of(context).textTheme.headlineMedium)),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),


        /// -- Items in Cart
        child: TCartItems(),
        ),
      

      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(() => const CheckoutScreen()), child: const Text('Checkout \$35.00'),),
      ),

      );
    }
  }

