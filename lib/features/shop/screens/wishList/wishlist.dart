import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopup/common/widgets/appbar/appbar.dart';
import 'package:shopup/common/widgets/icons/circular_icon.dart';
import 'package:shopup/common/widgets/layout/grid_layout.dart';
import 'package:shopup/common/widgets/productsCard/product_card_vertical.dart';
import 'package:shopup/features/shop/screens/home/home_page.dart';
import 'package:shopup/utils/constants/sizes.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title:
            Text("Wishlist", style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          TCircularIcon(
              icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen())),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(
                  mainAxisExtenet: 280,
                  itemCount: 4,
                  itemBuilder: (_, index) => const TProductCardVertical()),
            ],
          ),
        ),
      ),
    );
  }
}
