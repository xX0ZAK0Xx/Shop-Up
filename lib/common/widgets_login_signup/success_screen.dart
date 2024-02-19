import 'package:flutter/material.dart';
import 'package:shopup/common/styles/spacing_styles.dart';
import 'package:shopup/utils/constants/colors.dart';
import 'package:shopup/utils/constants/sizes.dart';
import 'package:shopup/utils/constants/text_strings.dart';
import 'package:shopup/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String image, title, subTitle;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              //Image,
              Image(
                image: AssetImage(image),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              // Title & Subtitle,
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text(
                subTitle,
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
                  style: ElevatedButton.styleFrom(
                      backgroundColor: isDark ? TColors.dark : TColors.light),
                  onPressed: (){},
                  child: Text(
                    TTexts.tContinue,
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
