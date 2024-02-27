import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopup/utils/constants/sizes.dart';
import 'package:shopup/utils/device/device_utility.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar(
      {super.key,
      this.title,
      this.showBackArrow = false,
      this.leadingIcon,
      this.actions,
      this.leadingOnPressed});

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final Function()? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:  TSizes.defaultSpace, vertical: TSizes.sm),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  if (showBackArrow)
                    IconButton(
                        onPressed: () => Get.back(),
                        icon: const Icon(Iconsax.arrow_left_2, color: Colors.white,))
                  else if (leadingIcon != null)
                    IconButton(
                      onPressed: leadingOnPressed,
                      icon: Icon(leadingIcon),
                    ),
                  Container(
                    child: title,
                  ),
                ],
              ),
              Row(
                children: actions ?? [],
              )
            ],
          )
          ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
