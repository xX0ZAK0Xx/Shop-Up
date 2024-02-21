import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopup/utils/constants/colors.dart';
import 'package:shopup/utils/constants/sizes.dart';
import 'package:shopup/utils/device/device_utility.dart';
import 'package:shopup/utils/helpers/helper_functions.dart';

class TSeachContainer extends StatelessWidget {
  const TSeachContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true, 
    this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
        child: Container(
          width: TDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(TSizes.md),
          decoration: BoxDecoration(
            color: showBackground
                ? Colors.transparent
                : isDark
                    ? TColors.dark
                    : TColors.light,
            borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
            border: showBorder
                ? Border.all(
                    color: TColors.grey,
                  )
                : null,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: TColors.white,
              ),
              const SizedBox(
                width: TSizes.spaceBtwItems,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall!.apply(color: TColors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
