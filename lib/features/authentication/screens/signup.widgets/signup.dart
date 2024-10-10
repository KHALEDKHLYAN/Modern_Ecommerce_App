import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moderne_app/common/styles/widgets_login_signup/form_divider.dart';
import 'package:moderne_app/common/styles/widgets_login_signup/social_buttons.dart';
import 'package:moderne_app/features/authentication/screens/signup.widgets/widgets/signup_form.dart';
import 'package:moderne_app/util/constants/sizes.dart';
import 'package:moderne_app/util/constants/text_strings.dart';
import 'package:moderne_app/util/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpacing),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(
                TTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: TSizes.spaceBtwnScetions),

              //Form
              SignupForm(dark: dark),
              SizedBox(height: TSizes.spaceBtwnScetions),

              //Divider
              FormDivider(
                  dark: dark, dividerText: TTexts.createAccount.capitalize!),
              SizedBox(height: TSizes.spaceBtwnScetions),

              //Social Button
              SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
