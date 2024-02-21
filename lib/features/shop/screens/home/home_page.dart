import 'package:flutter/material.dart';
import 'package:shopup/common/widgets/customShapes/containers/primary_header_container.dart';
import 'package:shopup/common/widgets/searchContainer/search_container.dart';
import 'package:shopup/common/widgets/text/section_heading.dart';
import 'package:shopup/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:shopup/features/shop/screens/home/widgets/home_categories.dart';
import 'package:shopup/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
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
          ],
        ),
      ),
    );
  }
}
