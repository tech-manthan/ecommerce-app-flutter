import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class EChipTheme {
  EChipTheme._();

  static final _labelStyle = const TextStyle();

  static final _chipTheme = const ChipThemeData(
    checkmarkColor: EColors.white,
    selectedColor: EColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
  );

  static ChipThemeData lightChipTheme = _chipTheme.copyWith(
    disabledColor: EColors.grey.withValues(alpha: 0.4),
    labelStyle: _labelStyle.copyWith(color: EColors.black),
  );

  static ChipThemeData darkChipTheme = _chipTheme.copyWith(
    disabledColor: EColors.darkerGrey,
    labelStyle: _labelStyle.copyWith(
      color: EColors.white,
    ),
  );
}
