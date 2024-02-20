import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopup/features/authentication/screens/forget_password.dart';
import 'package:shopup/features/authentication/screens/signup.dart';
import 'package:shopup/utils/constants/colors.dart';
import 'package:shopup/utils/constants/sizes.dart';
import 'package:shopup/utils/constants/text_strings.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Column(children: [
        //Email,
        TextFormField(
          decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: '',
              hintText: TTexts.email),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        TextFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.password_check),
            labelText: '',
            hintText: TTexts.password,
            suffixIcon: Icon(Iconsax.eye_slash),
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields / 2,
        ),
        //remember me and forget password,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //remember me,
            Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                const Text(TTexts.rememberMe),
              ],
            ), //forget password
            TextButton(
                onPressed: () => Get.to(()=> const ForgetPassword()), child: const Text(TTexts.forgetPassword))
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),

        //Sign In Button ,
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text(TTexts.signIn),
          ),
        ),

        const SizedBox(height: TSizes.spaceBtwItems),
        //Create account button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: isDark ? TColors.dark : TColors.light),
            onPressed: () => Get.to(() => const SignupScreen()),
            child: Text(
              TTexts.createAccount,
              style: TextStyle(color: isDark ? TColors.light : TColors.dark),
            ),
          ),
        ),
      ]),
    ));
  }
}
