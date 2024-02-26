import 'package:flutter/material.dart';
import 'package:shopup/utils/constants/colors.dart';
import 'package:shopup/utils/device/device_utility.dart';
import 'package:shopup/utils/helpers/helper_functions.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  // If you want to add the background color to tabs uou have to wrap them in Material widget
  // to do that we need [PreferredSizeWidget] widget and thats why created custom class
  const TTabBar({
    super.key,
    required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Material(
      color: isDark ? TColors.black : TColors.white,
      child: TabBar(
          isScrollable: true,
          unselectedLabelColor: TColors.primary,
          indicatorColor: TColors.primary,
          labelColor: isDark ? TColors.white : TColors.primary,
          tabs: tabs),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}