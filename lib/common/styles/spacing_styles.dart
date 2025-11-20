import 'package:ecommerce_app/utils/constants/sizes.dart';

import 'package:flutter/material.dart';

class ESpacingStyles {
  ESpacingStyles._();

  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: ESizes.appBarHeight,
    left: ESizes.defaultSpace,
    right: ESizes.defaultSpace,
    bottom: ESizes.defaultSpace,
  );
}
