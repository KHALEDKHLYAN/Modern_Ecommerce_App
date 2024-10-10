import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moderne_app/common/styles/spacing_styles.dart';
import 'package:moderne_app/features/authentication/screens/login/login.dart';
import 'package:moderne_app/util/constants/image_strings.dart';
import 'package:moderne_app/util/constants/sizes.dart';
import 'package:moderne_app/util/constants/text_strings.dart';
import 'package:moderne_app/util/helpers/helper_functions.dart';

class SucessScreen extends StatelessWidget {
  const SucessScreen(
      {super.key,});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: SpacingStyles.paddingWithAppBarHeight * 2,
            child: Column(
              children: [
                //Image
                Image(
                  image: AssetImage(TImages.animation1),
                  width: HelperFunctions.screenWidth() * 0.6,
                ),
                SizedBox(height: TSizes.spaceBtwnScetions),
                //Title & SUbTitle
                Text(
                  TTexts.yourAccountCreatedTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: TSizes.spaceBtwnItems),
                Text(
                  TTexts.yourAccountCreatedSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: TSizes.spaceBtwnScetions),
                //Buttons
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(() => LoginScreen()),
                      child: Text(TTexts.continueText)),
                ),
                SizedBox(height: TSizes.spaceBtwnItems),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
