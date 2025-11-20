import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';

import 'package:flutter/material.dart';

class ETextButtonTheme {
  ETextButtonTheme._();

  static final _textStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static final _textButtonStyle = TextButton.styleFrom(
    elevation: 0,
    padding: const EdgeInsets.symmetric(
      vertical: ESizes.buttonHeight,
      horizontal: 20,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(ESizes.buttonRadius),
    ),
  );

  static final lightTextButtonTheme = TextButtonThemeData(
    style: _textButtonStyle,
  );

  static final darkTextButtonTheme = TextButtonThemeData(
    style: _textButtonStyle,
  );
}
