import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';

import 'package:flutter/material.dart';

class EOutlinedButtonTheme {
  EOutlinedButtonTheme._();

  static final _textStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static final _outlineButtonStyle = OutlinedButton.styleFrom(
    elevation: 0,
    side: const BorderSide(color: EColors.borderPrimary),
    padding: const EdgeInsets.symmetric(
      vertical: ESizes.buttonHeight,
      horizontal: 20,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(ESizes.buttonRadius),
    ),
  );

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: _outlineButtonStyle.merge(
      OutlinedButton.styleFrom(
        foregroundColor: EColors.dark,
        textStyle: _textStyle.copyWith(
          color: EColors.black,
        ),
      ),
    ),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: _outlineButtonStyle.merge(
      OutlinedButton.styleFrom(
        foregroundColor: EColors.light,
        textStyle: _textStyle.copyWith(
          color: EColors.textWhite,
        ),
      ),
    ),
  );
}
