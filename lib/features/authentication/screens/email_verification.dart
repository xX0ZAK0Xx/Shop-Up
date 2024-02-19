import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopup/common/widgets_login_signup/success_screen.dart';
import 'package:shopup/features/authentication/screens/login.dart';
import 'package:shopup/utils/constants/colors.dart';
import 'package:shopup/utils/constants/image_strings.dart';
import 'package:shopup/utils/constants/sizes.dart';
import 'package:shopup/utils/constants/text_strings.dart';
import 'package:shopup/utils/helpers/helper_functions.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () => Get.offAll(const LoginScreen()),
                icon: const Icon(CupertinoIcons.clear))
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Image,
              Image(
                image: const AssetImage(TImages.deliveredEmailIllustration),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              // Title & Subtitle,
              Text(
                TTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text(
                'zayedoyshik1@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text(
                TTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              // ,Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => SuccessScreen(
                        image: TImages.staticSuccessIllustration,
                        title: TTexts.yourAccountCreatedTitle,
                        subTitle: TTexts.yourAccountCreatedSubTitle,
                        onPressed: () => Get.to(() => const LoginScreen()),
                      )),
                  child: const Text(TTexts.tContinue),
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: isDark ? TColors.dark : TColors.light),
                  onPressed: (){},
                  child: Text(
                    TTexts.resendEmail,
                    style:
                        TextStyle(color: isDark ? TColors.light : TColors.dark),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
