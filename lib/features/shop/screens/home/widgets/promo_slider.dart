import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopup/common/widgets/Images/rounded_image.dart';
import 'package:shopup/common/widgets/customShapes/containers/circular_container.dart';
import 'package:shopup/features/shop/controllers/home_controller.dart';
import 'package:shopup/utils/constants/colors.dart';
import 'package:shopup/utils/constants/sizes.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key, required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: banners.map((url) =>TRoundedImage(imageUrl: url)).toList(), 
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(mainAxisSize: MainAxisSize.min, children: [
              for (int i = 0; i < banners.length; i++)
                TCircularContainer(
                  width: 20,
                  height: 5,
                  margin: const EdgeInsets.only(right: 20),
                  backgroundColor: controller.carouselCurrentIndex.value == i
                      ? TColors.primary
                      : TColors.grey,
                ),
            ]),
          ),
        )
      ],
    );
  }
}
