import 'package:flutter/material.dart';
import 'package:moderne_app/util/constants/colors.dart';
import 'package:moderne_app/util/constants/sizes.dart';
import 'package:moderne_app/util/helpers/helper_functions.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = TColors.white,
    this.backgroundColor = Colors.white,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: TSizes.spaceBtwnItems),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 56,
              height: 56,
              padding: EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                color:
                    backgroundColor ?? (dark ? TColors.black : TColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                  child: Image(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.cover,
                color: dark ? TColors.light : TColors.dark,
              )),
            ),
            //Text
            SizedBox(height: TSizes.spaceBtwnItems / 2),
            SizedBox(
              height: 75,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
