import 'package:flutter/material.dart';
import 'package:moderne_app/util/constants/colors.dart';
import 'package:moderne_app/util/constants/sizes.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    this.width=400,
    this.height=300,
    required this.imageUrl,
     this.applyImageRadius=true,
    this.border,
     this.backgroundColor=TColors.light,
    this.fit,
    this.padding,
     this.isNetworkiImage=false,
    this.onPressed,
     this.borderRadius=TSizes.md,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkiImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(TSizes.md),
        child: Image(fit: fit,
          image:isNetworkiImage?NetworkImage(imageUrl) : AssetImage(imageUrl)as ImageProvider),
      ),
    );
  }
}
