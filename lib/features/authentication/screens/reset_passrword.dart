import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopup/utils/constants/colors.dart';
import 'package:shopup/utils/constants/image_strings.dart';
import 'package:shopup/utils/constants/sizes.dart';
import 'package:shopup/utils/constants/text_strings.dart';
import 'package:shopup/utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
               //Image,
              Image(
                image:  const AssetImage(TImages.deliveredEmailIllustration),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              // Title & Subtitle,
              Text(
                TTexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text(
                TTexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //button,
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.back(),
                  child: const Text(
                    TTexts.done,
                  ),
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
        ),

      ),
    );
  }
}