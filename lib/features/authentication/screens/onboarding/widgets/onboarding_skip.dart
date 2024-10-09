import 'package:flutter/material.dart';
import 'package:moderne_app/features/authentication/controllers/onboarding_controller.dart';
import 'package:moderne_app/util/constants/sizes.dart';
import 'package:moderne_app/util/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpacing,
      child: TextButton(
        onPressed: ()=> OnBoardingController.instance.skipPage(),
       child: Text("Skip"),),
    );
  }
}
