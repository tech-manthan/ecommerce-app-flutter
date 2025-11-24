import 'package:ecommerce_app/utils/constants/colors.dart';

import 'package:flutter/material.dart';

class ETextTheme {
  ETextTheme._();

  static final _headineLargeStyle = const TextStyle().copyWith(
    fontSize: 32.0,
    fontWeight: FontWeight.bold,
  );

  static final _headineMediumStyle = const TextStyle().copyWith(
    fontSize: 24.0,
    fontWeight: FontWeight.w600,
  );

  static final _headlineSmallStyle = const TextStyle().copyWith(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
  );

  static final _titleLargeStyle = const TextStyle().copyWith(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
  );

  static final _titleMediumStyle = const TextStyle().copyWith(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
  );

  static final _titleSmallStyle = const TextStyle().copyWith(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );

  static final _bodyLargeStyle = const TextStyle().copyWith(
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
  );

  static final _bodyMediumStyle = const TextStyle().copyWith(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
  );

  static final _bodySmallStyle = const TextStyle().copyWith(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
  );

  static final _labelLargeStyle = const TextStyle().copyWith(
    fontSize: 12.0,
    fontWeight: FontWeight.normal,
  );

  static final _labelMediumStyle = const TextStyle().copyWith(
    fontSize: 12.0,
    fontWeight: FontWeight.normal,
  );

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: _headineLargeStyle.copyWith(
      color: EColors.textPrimary,
    ),
    headlineMedium: _headineMediumStyle.copyWith(
      color: EColors.textPrimary,
    ),
    headlineSmall: _headlineSmallStyle.copyWith(
      color: EColors.textPrimary,
    ),

    titleLarge: _titleLargeStyle.copyWith(
      color: EColors.textPrimary,
    ),
    titleMedium: _titleMediumStyle.copyWith(
      color: EColors.textPrimary,
    ),
    titleSmall: _titleSmallStyle.copyWith(
      color: EColors.textSecondary,
    ),

    bodyLarge: _bodyLargeStyle.copyWith(
      color: EColors.textPrimary,
    ),
    bodyMedium: _bodyMediumStyle.copyWith(
      color: EColors.textPrimary,
    ),
    bodySmall: _bodySmallStyle.copyWith(
      color: EColors.textSecondary,
    ),

    labelLarge: _labelLargeStyle.copyWith(
      color: EColors.textPrimary,
    ),
    labelMedium: _labelMediumStyle.copyWith(
      color: EColors.textSecondary,
    ),
  );
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: _headineLargeStyle.copyWith(
      color: EColors.light,
    ),
    headlineMedium: _headineMediumStyle.copyWith(
      color: EColors.light,
    ),
    headlineSmall: _headlineSmallStyle.copyWith(
      color: EColors.light,
    ),

    titleLarge: _titleLargeStyle.copyWith(
      color: EColors.light,
    ),
    titleMedium: _titleMediumStyle.copyWith(
      color: EColors.light,
    ),
    titleSmall: _titleSmallStyle.copyWith(
      color: EColors.light,
    ),

    bodyLarge: _bodyLargeStyle.copyWith(
      color: EColors.light,
    ),
    bodyMedium: _bodyMediumStyle.copyWith(
      color: EColors.light,
    ),
    bodySmall: _bodySmallStyle.copyWith(
      color: EColors.light.withValues(alpha: 0.5),
    ),

    labelLarge: _labelLargeStyle.copyWith(
      color: EColors.light,
    ),
    labelMedium: _labelMediumStyle.copyWith(
      color: EColors.light.withValues(alpha: 0.5),
    ),
  );
}
