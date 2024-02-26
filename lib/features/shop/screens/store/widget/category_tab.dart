import 'package:flutter/material.dart';
import 'package:shopup/common/widgets/layout/grid_layout.dart';
import 'package:shopup/common/widgets/productsCard/product_card_vertical.dart';
import 'package:shopup/common/widgets/text/section_heading.dart';
import 'package:shopup/features/shop/screens/store/widget/brand_showcase.dart';
import 'package:shopup/utils/constants/image_strings.dart';
import 'package:shopup/utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                //Brands,
                const TBrandShowCase(
                  images: [
                    TImages.productImage1,
                    TImages.productImage2,
                    TImages.productImage3
                  ],
                ),
                //Products,
                TSectionHeading(
                  title: 'Your might like',
                  showActionButton: true,
                  onPressed: () {},
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),

                TGridLayout(
                  mainAxisExtenet: 280,
                    itemCount: 4,
                    itemBuilder: (_, index) => const TProductCardVertical()),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
              ],
            ),
          ),
        ]);
  }
}
