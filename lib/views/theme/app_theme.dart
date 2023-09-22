import 'package:e_commerce_ui/views/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static ColorScheme lightColorScheme = const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF8F4E00),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFFFDCC2),
    onPrimaryContainer: Color(0xFF2E1500),
    secondary: Color(0xFF006874),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFF97F0FF),
    onSecondaryContainer: Color(0xFF001F24),
    tertiary: Color(0xFF5B6237),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFE0E7B1),
    onTertiaryContainer: Color(0xFF191E00),
    error: Color(0xFFBA1A1A),
    errorContainer: Color(0xFFFFDAD6),
    onError: Color(0xFFFFFFFF),
    onErrorContainer: Color(0xFF410002),
    background: Color(0xFFFFFBFF),
    onBackground: Color(0xFF201B17),
    surface: Color(0xFFFFFBFF),
    onSurface: Color(0xFF201B17),
    surfaceVariant: Color(0xFFF3DFD1),
    onSurfaceVariant: Color(0xFF51443B),
    outline: Color(0xFF847469),
    onInverseSurface: Color(0xFFFAEEE8),
    inverseSurface: Color(0xFF352F2B),
    inversePrimary: Color(0xFFFFB77B),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFF8F4E00),
    outlineVariant: Color(0xFFD6C3B6),
    scrim: Color(0xFF000000),
  );

  static ColorScheme darkColorScheme = const ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFFFB77B),
    onPrimary: Color(0xFF4D2700),
    primaryContainer: Color(0xFF6D3A00),
    onPrimaryContainer: Color(0xFFFFDCC2),
    secondary: Color(0xFF4FD8EB),
    onSecondary: Color(0xFF00363D),
    secondaryContainer: Color(0xFF004F58),
    onSecondaryContainer: Color(0xFF97F0FF),
    tertiary: Color(0xFFC4CB97),
    onTertiary: Color(0xFF2E330D),
    tertiaryContainer: Color(0xFF444A22),
    onTertiaryContainer: Color(0xFFE0E7B1),
    error: Color(0xFFFFB4AB),
    errorContainer: Color(0xFF93000A),
    onError: Color(0xFF690005),
    onErrorContainer: Color(0xFFFFDAD6),
    background: Color(0xFF201B17),
    onBackground: Color(0xFFECE0DA),
    surface: Color(0xFF201B17),
    onSurface: Color(0xFFECE0DA),
    surfaceVariant: Color(0xFF51443B),
    onSurfaceVariant: Color(0xFFD6C3B6),
    outline: Color(0xFF9E8E82),
    onInverseSurface: Color(0xFF201B17),
    inverseSurface: Color(0xFFECE0DA),
    inversePrimary: Color(0xFF8F4E00),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFFFFB77B),
    outlineVariant: Color(0xFF51443B),
    scrim: Color(0xFF000000),
  );

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: lightColorScheme,
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: $styles.colors.primary,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: darkColorScheme,
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: $styles.colors.primary,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
  );
}
