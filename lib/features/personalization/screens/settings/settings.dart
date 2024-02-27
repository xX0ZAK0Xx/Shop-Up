import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopup/common/widgets/appbar/appbar.dart';
import 'package:shopup/common/widgets/customShapes/containers/primary_header_container.dart';
import 'package:shopup/common/widgets/listTile/settings_menu_tile.dart';
import 'package:shopup/common/widgets/listTile/user_profile_list_tile.dart';
import 'package:shopup/common/widgets/text/section_heading.dart';
import 'package:shopup/utils/constants/colors.dart';
import 'package:shopup/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header,
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                TAppBar(
                  title: Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: TColors.white),
                  ),
                  
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                //User profile card,
                const TUserProfileTile(),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                )
              ],
            )),
            //body,
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  //Account Settings ,
                  const TSectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Account',
                    subTitle: 'Set delivery address',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subTitle: 'Add or remove products and move to checkout',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subTitle: 'In-progress and Completed Orders',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subTitle: 'Withdraw balance to registered account',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subTitle: 'List of all the discounted Coupons',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notification',
                    subTitle: 'Set any kind of Notification Message',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subTitle: 'Manage data usage and connected accounts',
                    onTap: () {},
                  ),

                  //App Settings,
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  const TSectionHeading(title: 'App Settings', showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  TSettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value){},),
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value){},),
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subTitle: 'Set image quality to be seen',
                    trailing: Switch(value: true, onChanged: (value){},),
                    onTap: () {},
                  ),

                  //Logout button,
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text('Logout'),),
                  ),
                  
                  const SizedBox(height: TSizes.spaceBtwSections * 2.5,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
