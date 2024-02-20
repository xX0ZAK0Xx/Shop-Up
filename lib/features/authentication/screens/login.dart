// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopup/common/styles/spacing_styles.dart';
import 'package:shopup/common/widgets/widgets_login_signup/form_divider.dart';
import 'package:shopup/common/widgets/widgets_login_signup/social_sections.dart';
import 'package:shopup/features/authentication/screens/widgets/login/login_form.dart';
import 'package:shopup/features/authentication/screens/widgets/login/login_header.dart';
import 'package:shopup/utils/constants/sizes.dart';
import 'package:shopup/utils/constants/text_strings.dart';
import 'package:shopup/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          // ignore: prefer_const_literals_to_create_immutables
          child: Column(
            children: [
              //Logo, Title & Sub-title,
              TLoginHeader(isDark: isDark),

              SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Form,
              TLoginForm(isDark: isDark),

              //divider,
              TFormDivider(isDark: isDark, dividerText: TTexts.orSignInWith),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Google or Facebook,
              TSocialSections()
            ],
          ),
        ),
      ),
    );
  }
}
