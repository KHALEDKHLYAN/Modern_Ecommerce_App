import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moderne_app/util/constants/image_strings.dart';
import 'package:moderne_app/util/constants/sizes.dart';
import 'package:moderne_app/util/constants/text_strings.dart';
import 'package:moderne_app/util/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.clear))],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(TSizes.defaultSpacing),
            child: Column(children: [
            //Image
                Image(
                  image: AssetImage(TImages.animation2),
                  width: HelperFunctions.screenWidth() * 0.6,
                ),
                SizedBox(height: TSizes.spaceBtwnScetions),
                //Title & SUbTitle
                Text(
                  TTexts.changeYourPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: TSizes.spaceBtwnItems),
                Text(
                  TTexts.changeYourPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: TSizes.spaceBtwnScetions),
                //Buttons
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(TTexts.done)),
                ),
                SizedBox(height: TSizes.spaceBtwnItems),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(TTexts.resendEmail)),
                ),
            ]),
          )
        ],
      ),
    );
  }
}
