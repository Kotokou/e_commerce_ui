import 'package:e_commerce_ui/app.dart';
import 'package:e_commerce_ui/views/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemUiOverlayStyle(
    statusBarColor: $styles.colors.primary,
    statusBarIconBrightness: Brightness.light,
  );
  runApp(const App());
}
