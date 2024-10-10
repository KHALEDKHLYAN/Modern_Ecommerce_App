import 'package:flutter/material.dart';
import 'package:moderne_app/util/constants/colors.dart';
import 'package:moderne_app/util/constants/sizes.dart';
import 'package:moderne_app/util/constants/text_strings.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}