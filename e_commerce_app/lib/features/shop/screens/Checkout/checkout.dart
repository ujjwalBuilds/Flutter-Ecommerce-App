import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/products/cart/coupon_widget.dart';
import 'package:e_commerce_app/common/widgets/success_screen/success_screen.dart';
import 'package:e_commerce_app/features/shop/screens/Cart/widgets/cart_items.dart';
import 'package:e_commerce_app/features/shop/screens/Checkout/widgets/billing_address_section.dart';
import 'package:e_commerce_app/features/shop/screens/Checkout/widgets/billing_amount_section.dart';
import 'package:e_commerce_app/features/shop/screens/Checkout/widgets/billing_payment_section.dart';
import 'package:e_commerce_app/navigation_menu.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(showBackArrow: true,title: Text('Order Review', style: Theme.of(context).textTheme.headlineMedium)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// -- Items in Cart
              const TCartItems(showAddRemoveButtons: false),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// -- Promocode or Coupon TextField
              const TCouponCode(),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// -- Billing Section
              TRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(TSizes.md),
                backgroundColor: dark ? TColors.black : TColors.white,
                child: const Column(
                  children: [
                    /// Pricing
                    TBillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwSections / 2),
                    
                    /// Divider
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwSections / 2),
                    
                    /// Payment Methods
                    TBillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBtwSections),
                    
                    
                    /// Address
                    TBillingAddressSection(),
                  ],
                ),
              )
            ],
          ),
          ),
      ),
    
      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(() => SuccessScreen(
          image: TImages.successfulPaymentIcon,
          title: 'Payment Success!',
          subTitle: 'Your item will be shipped soon!',
          onPressed: () => Get.offAll(() => const NavigationMenu()),
          ),
        ), 
        child: const Text('Checkout \$45.79'),),
      ),
    );
  }
}
