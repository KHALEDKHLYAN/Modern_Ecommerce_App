import 'package:flutter/material.dart';
import 'package:moderne_app/util/constants/colors.dart';
import 'package:moderne_app/util/constants/image_strings.dart';
import 'package:moderne_app/util/constants/sizes.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: TColors.grey,
          ),
          borderRadius: BorderRadius.circular(100),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Image(
              height: TSizes.iconMd,
              width: TSizes.iconMd,
              image: AssetImage(TImages.google)),
        ),
      ),
      SizedBox(width: TSizes.spaceBtwnItems),
      Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: TColors.grey,
          ),
          borderRadius: BorderRadius.circular(100),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Image(
              height: TSizes.iconMd,
              width: TSizes.iconMd,
              image: AssetImage(TImages.facebook)),
        ),
      ),
    ]);
  }
}
