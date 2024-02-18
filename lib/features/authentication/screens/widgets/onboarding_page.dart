import 'package:flutter/material.dart';
import 'package:shopup/utils/constants/sizes.dart';
import 'package:shopup/utils/helpers/helper_functions.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset(image,
          height: THelperFunctions.screenHeight() * .6,
          width: THelperFunctions.screenWidth() * 0.8),
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
        style: Theme.of(context).textTheme.bodyMedium,
        textAlign: TextAlign.center,
      ),
    ]);
  }
}
