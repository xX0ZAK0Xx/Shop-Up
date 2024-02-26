import 'package:flutter/material.dart';
import 'package:shopup/common/widgets/appbar/appbar.dart';
import 'package:shopup/common/widgets/appbar/tabBar.dart';
import 'package:shopup/common/widgets/brandCard/brand_card.dart';
import 'package:shopup/common/widgets/layout/grid_layout.dart';
import 'package:shopup/common/widgets/productsCart/cart_menu_icon.dart';
import 'package:shopup/common/widgets/searchContainer/search_container.dart';
import 'package:shopup/common/widgets/text/section_heading.dart';
import 'package:shopup/features/shop/screens/store/widget/brand_showcase.dart';
import 'package:shopup/features/shop/screens/store/widget/category_tab.dart';
import 'package:shopup/utils/constants/colors.dart';
import 'package:shopup/utils/constants/image_strings.dart';
import 'package:shopup/utils/constants/sizes.dart';
import 'package:shopup/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        // Appbar
        appBar: TAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          actions: [TCartContainer(onPressed: () {})],
        ),
        body: NestedScrollView(
            //header
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: isDark ? TColors.black : TColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        //Search Bar,
                        const SizedBox(height: TSizes.spaceBtwItems),
                        TSeachContainer(
                          text: 'Search in Store',
                          showBorder: true,
                          showBackground: false,
                          itemColor: isDark ? Colors.white : Colors.black,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(height: TSizes.spaceBtwSections),

                        //Featured Brands,
                        TSectionHeading(
                          title: 'Featured Brands',
                          showActionButton: true,
                          onPressed: () {},
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems / 1.5),
                        //brands grid
                        TGridLayout(
                            itemCount: 4,
                            mainAxisExtenet: 80,
                            itemBuilder: (_, index) {
                              return const TBrandCard(showBorder: true,);
                            })
                      ],
                    ),
                  ),
                  //tabs,
                  bottom: const TTabBar(
                    tabs: [
                      Tab(
                        child: Text("Sports"),
                      ),
                      Tab(
                        child: Text("Furniture"),
                      ),
                      Tab(
                        child: Text("Electronics"),
                      ),
                      Tab(
                        child: Text("Clothes"),
                      ),
                      Tab(
                        child: Text("Cosmetics"),
                      ),
                    ],
                  ),
                ),
              ];
            },
            //body
            body: const TabBarView(
              children: [
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
              ],
            )),
      ),
    );
  }
}
