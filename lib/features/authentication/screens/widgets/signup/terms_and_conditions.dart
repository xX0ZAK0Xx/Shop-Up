
import 'package:flutter/material.dart';
import 'package:shopup/utils/constants/colors.dart';
import 'package:shopup/utils/constants/sizes.dart';
import 'package:shopup/utils/constants/text_strings.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(
              value: true,
              onChanged: (value) {},
            )),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: '${TTexts.iAgreeTo} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: '${TTexts.privacyPolicy} ',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .apply(color: isDark? TColors.white : TColors.primary, 
                        decoration: TextDecoration.underline,
                        decorationColor: isDark ? TColors.white : TColors.primary,
                  )),
          TextSpan(
              text: '${TTexts.and} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: '${TTexts.termsOfUse} ',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .apply(color: isDark? TColors.white : TColors.primary, 
                        decoration: TextDecoration.underline,
                        decorationColor: isDark ? TColors.white : TColors.primary,
                  )),
        ]))
      ],
    );
  }
}
