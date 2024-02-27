import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopup/common/widgets/Images/circular_image.dart';
import 'package:shopup/utils/constants/colors.dart';
import 'package:shopup/utils/constants/image_strings.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(
        image: TImages.user,
        isNetworkImage: false,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Md. Zayed Oyshik',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: TColors.white),
      ),
      subtitle: Text(
        'zayedoyshik1@gmail.com',
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Iconsax.edit),
        color: TColors.white,
      ),
    );
  }
}
