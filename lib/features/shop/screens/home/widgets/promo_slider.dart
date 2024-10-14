import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moderne_app/common/widgets/custom_shapes/circular_container.dart';
import 'package:moderne_app/common/widgets/images/rounded_Images.dart';
import 'package:moderne_app/features/shop/controllers/home_controller.dart';
import 'package:moderne_app/util/constants/colors.dart';
import 'package:moderne_app/util/constants/sizes.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key, required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(children: [
      CarouselSlider(
        options: CarouselOptions(
            viewportFraction: 0.8,
            onPageChanged: (index, _) => controller.updatePageIndicator(index)),
        items: banners.map((url)=>RoundedImage(imageUrl: url)).toList(),
      ),
      SizedBox(height: TSizes.spaceBtwnItems),
      Obx(
        ()=> Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < banners.length; i++)
              CircularContainer(
                width: 20,
                height: 4,
                margin: EdgeInsets.all(10),
                backgroundColor: controller.carousalCurrentIndex.value == i
                    ? TColors.primary
                    : TColors.grey,
              ),
          ],
        ),
      ),
    ]);
  }
}
