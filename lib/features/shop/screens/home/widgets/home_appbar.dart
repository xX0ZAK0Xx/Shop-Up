import 'package:flutter/material.dart';
import 'package:shopup/common/widgets/appbar/appbar.dart';
import 'package:shopup/common/widgets/productsCart/cart_menu_icon.dart';
import 'package:shopup/utils/constants/colors.dart';
import 'package:shopup/utils/constants/text_strings.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: TColors.grey),
          ),
          Text(
            TTexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .apply(color: TColors.white),
          ),
        ],
      ),
      actions: [TCartContainer(iconColor: TColors.white, onPressed: (){},)],
    );
  }
}