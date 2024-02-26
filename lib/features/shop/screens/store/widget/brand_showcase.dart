import 'package:flutter/material.dart';
import 'package:shopup/common/widgets/brandCard/brand_card.dart';
import 'package:shopup/common/widgets/customShapes/containers/rounded_container.dart';
import 'package:shopup/utils/constants/colors.dart';
import 'package:shopup/utils/constants/image_strings.dart';
import 'package:shopup/utils/constants/sizes.dart';
import 'package:shopup/utils/helpers/helper_functions.dart';

class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    super.key,
    required this.images,
  });
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    final bool isDark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      padding: const EdgeInsets.all(TSizes.md),
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          //Brand with products count,
          const TBrandCard(
            showBorder: false,
          ),
          
          const SizedBox(height: TSizes.spaceBtwItems,),
          
          //brand top 3 product images
          Row(
            children: images.map((e) => brandTopProductImageWidget(e, context, isDark)).toList(),
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context, bool isDark) {
    return Expanded(
      child: TRoundedContainer(
        height: 100,
        backgroundColor: isDark ? TColors.darkGrey : TColors.light,
        margin: const EdgeInsets.only(right: TSizes.sm),
        padding: const EdgeInsets.only(right: TSizes.sm),
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
