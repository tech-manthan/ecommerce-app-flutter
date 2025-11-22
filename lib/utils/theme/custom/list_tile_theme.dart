import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class EListTileTheme {
  EListTileTheme._();

  static final _listStyleTheme = ListTileThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(ESizes.borderRadiusMd),
    ),
  );

  static final lightListTileTheme = _listStyleTheme;

  static final darkListTileTheme = _listStyleTheme;
}
