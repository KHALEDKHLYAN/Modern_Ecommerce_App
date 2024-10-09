import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:moderne_app/common/styles/widgets_login_signup/form_divider.dart';
import 'package:moderne_app/common/styles/widgets_login_signup/social_buttons.dart';
import 'package:moderne_app/util/constants/colors.dart';
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
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: InputDecoration(
                                labelText: TTexts.firstName,
                                prefixIcon: Icon(Iconsax.user)),
                          ),
                        ),
                        SizedBox(width: TSizes.spaceBtwnInputFields),
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: InputDecoration(
                                labelText: TTexts.lastName,
                                prefixIcon: Icon(Iconsax.user)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: TSizes.spaceBtwnInputFields),

                    //UserName
                    TextFormField(
                      expands: false,
                      decoration: InputDecoration(
                          labelText: TTexts.username,
                          prefixIcon: Icon(Iconsax.user_edit)),
                    ),
                    SizedBox(height: TSizes.spaceBtwnInputFields),

                    //Email
                    TextFormField(
                      expands: false,
                      decoration: InputDecoration(
                          labelText: TTexts.email,
                          prefixIcon: Icon(Iconsax.user)),
                    ),
                    SizedBox(height: TSizes.spaceBtwnInputFields),

                    //Phone Number
                    TextFormField(
                      expands: false,
                      decoration: InputDecoration(
                          labelText: TTexts.phoneNumber,
                          prefixIcon: Icon(Iconsax.call)),
                    ),
                    SizedBox(height: TSizes.spaceBtwnInputFields),

                    //Password
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: TTexts.password,
                        prefixIcon: Icon(Iconsax.password_check),
                        suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    ),
                    SizedBox(height: TSizes.spaceBtwnInputFields),

                    //Terms7Conditions CheeckBox
                    Row(
                      children: [
                        SizedBox(
                            width: 24,
                            height: 24,
                            child:
                                Checkbox(value: true, onChanged: (value) {})),
                        SizedBox(height: TSizes.spaceBtwnItems),
                        Text.rich(TextSpan(children: [
                          TextSpan(
                              text: ' ${TTexts.iAgreeTo} ',
                              style: Theme.of(context).textTheme.bodySmall),
                          TextSpan(
                            text: '${TTexts.privacyPolicy}  ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .apply(
                                  color: dark ? TColors.white : TColors.primary,
                                  decoration: TextDecoration.underline,
                                  decorationColor:
                                      dark ? TColors.white : TColors.primary,
                                ),
                          ),
                          TextSpan(
                              text: TTexts.and,
                              style: Theme.of(context).textTheme.bodySmall),
                          TextSpan(
                            text: ' ${TTexts.termsAndCondition} ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .apply(
                                  color: dark ? TColors.white : TColors.primary,
                                  decoration: TextDecoration.underline,
                                  decorationColor:
                                      dark ? TColors.white : TColors.primary,
                                ),
                          ),
                        ]))
                      ],
                    ),
                    SizedBox(height: TSizes.spaceBtwnScetions),

                    ///SignUp Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(TTexts.createAccount),
                      ),
                    ),
                  ],
                ),
              ),
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
