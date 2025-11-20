import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

/* -- Light & Dark Elevated Button Themes -- */
class EElevatedButtonTheme {
  EElevatedButtonTheme._();

  static final _buttonTextStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static final _elevatedButtonStyle = ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: EColors.light,
    backgroundColor: EColors.primary,
    disabledForegroundColor: EColors.darkGrey,
    side: const BorderSide(color: EColors.primary),
    padding: const EdgeInsets.symmetric(vertical: ESizes.buttonHeight),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(ESizes.buttonRadius),
    ),
    textStyle: _buttonTextStyle.copyWith(
      color: EColors.textWhite,
    ),
  );

  /* -- Light Theme -- */
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: _elevatedButtonStyle.merge(
      ElevatedButton.styleFrom(
        disabledBackgroundColor: EColors.buttonDisabled,
      ),
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: _elevatedButtonStyle.merge(
      ElevatedButton.styleFrom(
        disabledBackgroundColor: EColors.darkerGrey,
      ),
    ),
  );
}
