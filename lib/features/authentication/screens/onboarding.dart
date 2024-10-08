// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moderne_app/features/authentication/controllers/onboarding_controller.dart';
import 'package:moderne_app/features/authentication/screens/widgets/onboarding_next_button.dart';
import 'package:moderne_app/features/authentication/screens/widgets/onboarding_page.dart';
import 'package:moderne_app/features/authentication/screens/widgets/onboarding_skip.dart';
import 'package:moderne_app/features/authentication/screens/widgets/onbording_dot_navigation.dart';
import 'package:moderne_app/util/constants/image_strings.dart';
import 'package:moderne_app/util/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());


    return Scaffold(
      body: Stack(
        children: [
          //Horizontal Scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                  image: TImages.onBoardingImage1,
                  title: TTexts.onBoardingTitle1,
                  subTitle: TTexts.onBoardingSubtTitle1),
              OnBoardingPage(
                  image: TImages.onBoardingImage2,
                  title: TTexts.onBoardingTitle2,
                  subTitle: TTexts.onBoardingSubtTitle2),
              OnBoardingPage(
                  image: TImages.onBoardingImage3,
                  title: TTexts.onBoardingTitle3,
                  subTitle: TTexts.onBoardingSubtTitle3),
            ],
          ),
          //SKIP botton
          OnBoardingSkip(),

          //SmoothPageIndicaror
          OnBoardingNavigation(),

          //Circular Button
          OnBoardingNextButton()
        ],
      ),
    );
  }
}
