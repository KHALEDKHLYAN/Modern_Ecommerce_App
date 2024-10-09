import 'package:flutter/material.dart';
import 'package:moderne_app/features/authentication/controllers/onboarding_controller.dart';
import 'package:moderne_app/util/constants/colors.dart';
import 'package:moderne_app/util/constants/sizes.dart';
import 'package:moderne_app/util/device/device_utility.dart';
import 'package:moderne_app/util/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller  = OnBoardingController.instance;

    final dark = HelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: TSizes.defaultSpacing,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? TColors.light : TColors.dark,
              dotHeight: 6),
        ));
  }
}