import 'package:flutter/material.dart';
import 'package:shopup/common/widgets/imageTextWidget/image_text_widget.dart';
import 'package:shopup/utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((_, index) {
          return TVerticalImageText(
            image: TImages.shoeIcon,
            title: 'Shoes Category',
            onTap: () {},
          );
        }),
      ),
    );
  }
}
