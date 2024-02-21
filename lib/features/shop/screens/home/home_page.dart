import 'package:flutter/material.dart';
import 'package:shopup/common/widgets/customShapes/containers/primary_header_container.dart';
import 'package:shopup/common/widgets/layout/grid_layout.dart';
import 'package:shopup/common/widgets/productsCard/product_card_vertical.dart';
import 'package:shopup/common/widgets/searchContainer/search_container.dart';
import 'package:shopup/common/widgets/text/section_heading.dart';
import 'package:shopup/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:shopup/features/shop/screens/home/widgets/home_categories.dart';
import 'package:shopup/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:shopup/utils/constants/image_strings.dart';
import 'package:shopup/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
                child: Column(
              children: [
                //AppBar
                THomeAppBar(),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                //SearchBar
                TSeachContainer(
                  text: 'Search in store',
                ),

                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                //Category,
                Padding(
                  padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      //Heading
                      TSectionHeading(
                        title: 'Popular Categories',
                        showActionButton: false,
                        textColor: Colors.white,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),

                      //Categories,
                      THomeCategories()
                    ],
                  ),
                ),
              ],
            )),

            //Body,
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  //Promo Slider
                  const TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  //Popular Products,
                  TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical(), mainAxisExtenet: 280,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
