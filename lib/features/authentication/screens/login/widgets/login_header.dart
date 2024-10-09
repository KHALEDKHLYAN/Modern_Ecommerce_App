import 'package:flutter/material.dart';
import 'package:moderne_app/util/constants/image_strings.dart';
import 'package:moderne_app/util/constants/sizes.dart';
import 'package:moderne_app/util/constants/text_strings.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
        height: 150,
        image: AssetImage(
            dark ? TImages.darkAppLogo : TImages.lightAppLogo)),
    Text(TTexts.loginTitle,
        style: Theme.of(context).textTheme.headlineMedium),
    const SizedBox(height: TSizes.sm),
    Text(TTexts.loginSubTitle,
        style: Theme.of(context).textTheme.titleMedium),
      ],
    );
  }
}
