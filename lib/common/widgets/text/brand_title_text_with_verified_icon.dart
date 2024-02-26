import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopup/common/widgets/text/brand_title_text.dart';
import 'package:shopup/utils/constants/colors.dart';
import 'package:shopup/utils/constants/enums.dart';
import 'package:shopup/utils/constants/sizes.dart';

class BrandTitleTextWithVerifiedIcon extends StatelessWidget {
  const BrandTitleTextWithVerifiedIcon({
    super.key,
    this.textColor,
    this.maxLine = 1,
    required this.title,
    this.itemColor = TColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });
  final String title;
  final int maxLine;
  final Color? textColor, itemColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Flexible(
      flex: 1,
      child: TBrandTitleText(
        title: title,
        color: textColor,
        maxLines: maxLine,
        textAlign: TextAlign.center,
        brandTextSize: brandTextSize,
      ),
    ),
    const Flexible(
      flex: 0,
      child: Icon(
        Iconsax.verify5,
        color: TColors.primary,
        size: TSizes.iconSm,
      ),
    ),
  ],
);
  }
}
