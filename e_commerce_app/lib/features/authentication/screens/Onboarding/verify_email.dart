import 'package:e_commerce_app/common/widgets/success_screen/success_screen.dart';
import 'package:e_commerce_app/features/authentication/screens/login_screen/login.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(()=> const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///Image
              Image(
                image: const AssetImage(TImages.deliveredEmailIllustration),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(width: TSizes.spaceBtwSections),
              ///Title & SubTitle
              Text(TTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(width: TSizes.spaceBtwSections),
              Text('support@versus.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
              const SizedBox(width: TSizes.spaceBtwSections),
              Text(TTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
              const SizedBox(width: TSizes.spaceBtwSections),
              
              ///Buttons
              SizedBox(width: double.infinity , child: ElevatedButton(
              onPressed: () => Get.to(() => SuccessScreen(
                image: TImages.staticSuccessIllustration,
                title: TTexts.yourAccountCreatedTitle,
                subTitle: TTexts.yourAccountCreatedSubTitle ,
                onPressed: () => Get.to(() => const LoginScreen()),
                
                ),),
              child: const Text(TTexts.tContinue)),
              ),
              const SizedBox(width: TSizes.spaceBtwSections),
              SizedBox(width: double.infinity , child: TextButton(onPressed: (){}, child: const Text(TTexts.resendEmail))),
            ],
          ),
        ),
      ),
    );
  }
}