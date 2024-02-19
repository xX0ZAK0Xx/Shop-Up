import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:shopup/common/widgets_login_signup/form_divider.dart';
import 'package:shopup/common/widgets_login_signup/social_sections.dart';
import 'package:shopup/features/authentication/screens/widgets/signup/signup_form.dart';
import 'package:shopup/utils/constants/sizes.dart';
import 'package:shopup/utils/constants/text_strings.dart';
import 'package:shopup/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30,),
              //Title,
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              const SizedBox(height: 50,),
              //Form,
              TSignupForm(isDark: isDark),
              const SizedBox(height: TSizes.spaceBtwSections,),

              //divider,
              TFormDivider(isDark: isDark, dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections,),
              
              //social buttons,
              const TSocialSections(),
              const SizedBox(height: TSizes.spaceBtwSections,),

            ],
          ),
        ),
      ),
    );
  }
}
