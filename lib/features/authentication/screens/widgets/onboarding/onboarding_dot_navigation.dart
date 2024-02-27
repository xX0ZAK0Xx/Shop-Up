import 'package:flutter/material.dart';
import 'package:shopup/features/authentication/controllers/controller_onboarding/onboarding_controller.dart';
import 'package:shopup/utils/constants/colors.dart';
import 'package:shopup/utils/device/device_utility.dart';
import 'package:shopup/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardDotNavigation extends StatelessWidget {
  const OnBoardDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    final controller = OnboardingController.instance;
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 40,
      child: SizedBox(
        height: 50,
        width: TDeviceUtils.getScreenWidth(context) - 48,
        child: Center(
          child: SmoothPageIndicator(
              controller: controller.pageController,
              count: 3,
              effect: WormEffect(
                  activeDotColor: isDark ? TColors.light : TColors.dark,
                  dotWidth: 10,
                  dotHeight: 10),
              onDotClicked: controller.dotNavigationClick, 
            ),
        ),
      ),
    );
  }
}
