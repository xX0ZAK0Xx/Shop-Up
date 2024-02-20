
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopup/features/authentication/screens/email_verification.dart';
import 'package:shopup/features/authentication/screens/signup.dart';
import 'package:shopup/features/authentication/screens/widgets/signup/terms_and_conditions.dart';
import 'package:shopup/utils/constants/colors.dart';
import 'package:shopup/utils/constants/sizes.dart';
import 'package:shopup/utils/constants/text_strings.dart';
import 'package:shopup/utils/helpers/helper_functions.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtwInputFields,
            ),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: TTexts.lastName,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        //Username,
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: TTexts.username,
              floatingLabelBehavior: FloatingLabelBehavior.never,
              prefixIcon: Icon(Iconsax.user_edit)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
    
        //Email,
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: TTexts.email,
              floatingLabelBehavior: FloatingLabelBehavior.never,
              prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
    
        //Phone Number,
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: TTexts.phoneNo,
              floatingLabelBehavior: FloatingLabelBehavior.never,
              prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
    
        //Password,
        TextFormField(
          obscureText: true,
          expands: false,
          decoration: const InputDecoration(
              labelText: TTexts.password,
              floatingLabelBehavior: FloatingLabelBehavior.never,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
    
        //Terms and Conditions checkbox,
        TermsAndConditions(isDark: isDark),
        const SizedBox(height: TSizes.spaceBtwSections,),
        
        //SignUp Button,
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => Get.to(()=> const EmailVerificationScreen()),
            child: const Text(TTexts.createAccount),
          ),
        )
      ],
    ));
  }
}
