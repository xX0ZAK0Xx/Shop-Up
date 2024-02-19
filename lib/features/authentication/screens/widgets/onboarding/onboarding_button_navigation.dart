
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopup/features/authentication/controllers/controller_onboarding/onboarding_controller.dart';
import 'package:shopup/utils/device/device_utility.dart';
import 'package:shopup/utils/helpers/helper_functions.dart';

class OnBoardButtonNavigation extends StatelessWidget {
  const OnBoardButtonNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: 25,
      child: SizedBox(
        width: TDeviceUtils.getScreenWidth(context)-48,
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: OnboardingController.instance.previousPage,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: isDark ? Colors.white : Colors.black,
                child: Icon(Iconsax.arrow_left_2, color: isDark ? Colors.black : Colors.white,),
              ),
            ),
            GestureDetector(
              onTap: OnboardingController.instance.nextPage,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: isDark ? Colors.white : Colors.black,
                child: Icon(Iconsax.arrow_right_34, color: isDark ? Colors.black : Colors.white,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
