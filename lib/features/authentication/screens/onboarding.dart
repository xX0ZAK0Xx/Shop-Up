import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopup/features/authentication/controllers/controller_onboarding/onboarding_controller.dart';
import 'package:shopup/features/authentication/screens/widgets/onboarding/onboarding_button_navigation.dart';
import 'package:shopup/features/authentication/screens/widgets/onboarding/onboarding_dot_navigation.dart';
import 'package:shopup/features/authentication/screens/widgets/onboarding/onboarding_page.dart';
import 'package:shopup/features/authentication/screens/widgets/onboarding/onboarding_skip.dart';
import 'package:shopup/utils/constants/image_strings.dart';
import 'package:shopup/utils/constants/sizes.dart';
import 'package:shopup/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Stack(children: [
        //Horizontal Scrollable Pages,
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: const [
          OnBoardingPage(
              image: TImages.onBoardingImage1,
              title: TTexts.onBoardingTitle1,
              subTitle: TTexts.onBoardingSubTitle1),
          OnBoardingPage(
              image: TImages.onBoardingImage2,
              title: TTexts.onBoardingTitle2,
              subTitle: TTexts.onBoardingSubTitle2),
          OnBoardingPage(
              image: TImages.onBoardingImage3,
              title: TTexts.onBoardingTitle3,
              subTitle: TTexts.onBoardingSubTitle3),
        ]),
        //Skip Button,
        const OnBoardingSkip(),

        //Dot Navigation SmootPageIndiccator,
        const OnBoardDotNavigation(),

        //Circular Button,
        const OnBoardButtonNavigation()
      ]),
    ));
  }
}
