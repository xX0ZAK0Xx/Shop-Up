
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopup/utils/constants/colors.dart';

class TCartContainer extends StatelessWidget {
  const TCartContainer({
    super.key, this.iconColor, required this.onPressed,
  });

  final Color? iconColor;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: onPressed, icon: Icon(Iconsax.shopping_bag, color: iconColor,)),
        Positioned(
          right: 5,
          top: 10,
          child: Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              color: TColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.white, fontSizeFactor: 0.9),
              ),
            ),
          ),
        )
      ],
    );
  }
}
