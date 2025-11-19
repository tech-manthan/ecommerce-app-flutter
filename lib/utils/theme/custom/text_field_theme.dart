import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';

import 'package:flutter/material.dart';

class ETextFormFieldTheme {
  ETextFormFieldTheme._();

  static final _labelStyle = const TextStyle().copyWith(
    fontSize: ESizes.fontSizeMd,
  );

  static final _hintStyle = const TextStyle().copyWith(
    fontSize: ESizes.fontSizeSm,
  );

  static final _errorStyle = const TextStyle().copyWith(
    fontStyle: FontStyle.normal,
  );

  static final _floatingLabelStyle = const TextStyle().copyWith();

  static final _borderStyle = const OutlineInputBorder().copyWith(
    borderRadius: BorderRadius.circular(ESizes.inputFieldRadius),
  );

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: EColors.darkGrey,
    suffixIconColor: EColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: _labelStyle.copyWith(
      color: EColors.textPrimary,
    ),
    hintStyle: _hintStyle.copyWith(
      color: EColors.textSecondary,
    ),
    errorStyle: _errorStyle,
    floatingLabelStyle: _floatingLabelStyle.copyWith(
      color: EColors.textSecondary,
    ),
    border: _borderStyle.copyWith(
      borderSide: const BorderSide(width: 1, color: EColors.borderPrimary),
    ),
    enabledBorder: _borderStyle.copyWith(
      borderSide: const BorderSide(width: 1, color: EColors.borderPrimary),
    ),
    focusedBorder: _borderStyle.copyWith(
      borderSide: const BorderSide(width: 1, color: EColors.borderPrimary),
    ),
    errorBorder: _borderStyle.copyWith(
      borderSide: const BorderSide(width: 1, color: EColors.error),
    ),
    focusedErrorBorder: _borderStyle.copyWith(
      borderSide: const BorderSide(width: 1, color: EColors.error),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: EColors.darkGrey,
    suffixIconColor: EColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: ESizes.inputFieldHeight),
    labelStyle: _labelStyle.copyWith(
      color: EColors.white,
    ),
    hintStyle: _hintStyle.copyWith(
      color: EColors.white,
    ),
    floatingLabelStyle: _floatingLabelStyle.copyWith(
      color: EColors.white.withValues(alpha: 0.8),
    ),
    border: _borderStyle.copyWith(
      borderSide: const BorderSide(width: 1, color: EColors.darkGrey),
    ),
    enabledBorder: _borderStyle.copyWith(
      borderSide: const BorderSide(width: 1, color: EColors.darkGrey),
    ),
    focusedBorder: _borderStyle.copyWith(
      borderSide: const BorderSide(width: 1, color: EColors.darkGrey),
    ),
    errorBorder: _borderStyle.copyWith(
      borderSide: const BorderSide(width: 1, color: EColors.error),
    ),
    focusedErrorBorder: _borderStyle.copyWith(
      borderSide: const BorderSide(width: 1, color: EColors.error),
    ),
  );
}
