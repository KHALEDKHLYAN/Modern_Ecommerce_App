
import "package:flutter/material.dart";
import 'package:moderne_app/util/constants/sizes.dart';

class SpacingStyles{
  // ignore: constant_identifier_names
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: TSizes.appBarHeight,
    left: TSizes.defaultSpacing,
    bottom: TSizes.defaultSpacing,
    right: TSizes.defaultSpacing,
  );
}