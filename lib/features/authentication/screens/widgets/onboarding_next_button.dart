import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:moderne_app/features/authentication/controllers/onboarding_controller.dart';
import 'package:moderne_app/util/constants/colors.dart';
import 'package:moderne_app/util/constants/sizes.dart';
import 'package:moderne_app/util/device/device_utility.dart';
import 'package:moderne_app/util/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Positioned(
      right: TSizes.defaultSpacing,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed:()=> OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            backgroundColor: dark ? TColors.primary : TColors.dark),
        child: Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}