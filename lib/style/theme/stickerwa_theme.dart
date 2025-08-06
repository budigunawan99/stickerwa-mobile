import 'package:StickerWA/style/colors/stickerwa_colors.dart';
import 'package:StickerWA/style/typography/stickerwa_text_style.dart';
import 'package:flutter/material.dart';

class StickerwaTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      colorScheme: darkColorScheme,
      focusColor: _darkFocusColor,
      brightness: Brightness.dark,
      textTheme: _textTheme,
      useMaterial3: true,
      appBarTheme: _darkAppBarTheme,
    );
  }

  static TextTheme get _textTheme {
    return TextTheme(
      displayLarge: StickerwaTextStyle.displayLarge,
      displayMedium: StickerwaTextStyle.displayMedium,
      displaySmall: StickerwaTextStyle.displaySmall,
      headlineLarge: StickerwaTextStyle.headlineLarge,
      headlineMedium: StickerwaTextStyle.headlineMedium,
      headlineSmall: StickerwaTextStyle.headlineSmall,
      titleLarge: StickerwaTextStyle.titleLarge,
      titleMedium: StickerwaTextStyle.titleMedium,
      titleSmall: StickerwaTextStyle.titleSmall,
      bodyLarge: StickerwaTextStyle.bodyLargeBold,
      bodyMedium: StickerwaTextStyle.bodyLargeMedium,
      bodySmall: StickerwaTextStyle.bodyLargeRegular,
      labelLarge: StickerwaTextStyle.labelLarge,
      labelMedium: StickerwaTextStyle.labelMedium,
      labelSmall: StickerwaTextStyle.labelSmall,
    );
  }

  static AppBarTheme get _darkAppBarTheme {
    return AppBarTheme(
      backgroundColor: StickerwaColors.darkGreen.color,
      titleTextStyle: _textTheme.titleLarge?.copyWith(
        color: StickerwaColors.boneWhite.color,
      ),
      actionsIconTheme: IconThemeData(
        color: StickerwaColors.boneWhite.color,
        size: 14.0,
      ),
    );
  }

  static ColorScheme darkColorScheme = ColorScheme(
    primary: StickerwaColors.darkGreen.color,
    onPrimary: StickerwaColors.boneWhite.color,
    secondary: StickerwaColors.mediumGreen.color,
    onSecondary: StickerwaColors.darkGreen.color,
    error: StickerwaColors.red.color,
    onError: StickerwaColors.boneWhite.color,
    surface: StickerwaColors.lightGreen.color,
    onSurface: StickerwaColors.darkGreen.color,
    brightness: Brightness.dark,
    surfaceContainer: StickerwaColors.lightGreen.color,
  );
  static final Color _darkFocusColor = Colors.black.withValues(alpha: 0.12);
}
