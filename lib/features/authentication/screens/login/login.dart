import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moderne_app/common/styles/spacing_Styles.dart';
import 'package:moderne_app/common/styles/widgets_login_signup/form_divider.dart';
import 'package:moderne_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:moderne_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:moderne_app/common/styles/widgets_login_signup/social_buttons.dart';
import 'package:moderne_app/util/constants/sizes.dart';
import 'package:moderne_app/util/constants/text_strings.dart';
import 'package:moderne_app/util/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: SpacingStyles.paddingWithAppBarHeight,
            child: Column(
              children: [
                //Logo, Title & Sub -Title
                LoginHeader(dark: dark),
                
                //LoginForm
                LoginForm(),
                
                //Divider
                FormDivider(dark: dark, dividerText: TTexts.orSignInWIth.capitalize!,),
                SizedBox(height: TSizes.spaceBtwnScetions),
                //Footer
                SocialButtons(),
              ],
            )),
      ),
    );
  }
}
