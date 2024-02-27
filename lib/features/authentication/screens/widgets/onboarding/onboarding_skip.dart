
import 'package:flutter/material.dart';
import 'package:shopup/features/authentication/controllers/controller_onboarding/onboarding_controller.dart';
import 'package:shopup/utils/constants/sizes.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TSizes.md,
      right: 0,
      child: GestureDetector(
        onTap: OnboardingController.instance.skipPage,            
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          decoration: BoxDecoration(
            color: const Color.fromARGB(130, 238, 212, 255),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Center(child: Text("Skip"),),
        ))
      );
  }
}
