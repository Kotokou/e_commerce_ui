import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

final $styles = AppStyle();

@immutable
class AppStyle {
  // Text styles
  final text = _Text();

  // Padding and margin values
  final insets = _Insets();

  // Animation Durations
  final times = _Times();

  // Colors
  final colors = _Colors();

  // Gradients
  final gradients = _Gradients();
}

@immutable
class _Text {
  late final TextStyle splashLabel = const TextStyle(
    fontFamily: 'Bad Script',
    fontSize: 24,
    fontWeight: FontWeight.normal,
  );

  late final TextStyle bigLabelMeduim = const TextStyle(
    fontFamily: 'Josefin Sans',
    fontSize: 32,
    fontWeight: FontWeight.normal,
  );

  late final TextStyle buttonTitle = const TextStyle(
    fontFamily: 'Josefin Sans',
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  late final TextStyle labelMeduim = const TextStyle(
    fontFamily: 'Josefin Sans',
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  late final TextStyle largeLabelMeduim = const TextStyle(
    fontFamily: 'Josefin Sans',
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );

  late final TextStyle labelRegular = const TextStyle(
    fontFamily: 'Josefin Sans',
    fontSize: 20,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
  );

  late final TextStyle descriptionRegular = const TextStyle(
    fontFamily: 'Josefin Sans',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  late final TextStyle smallDescriptionRegular = const TextStyle(
    fontFamily: 'Josefin Sans',
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  late final TextStyle descriptionMeduim = const TextStyle(
    fontFamily: 'Josefin Sans',
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  late final TextStyle smallLabelRegular = const TextStyle(
    fontFamily: 'Josefin Sans',
    fontSize: 10,
    fontWeight: FontWeight.w400,
  );

  late final TextStyle largeLabelSemiMeduim = const TextStyle(
    fontFamily: 'Josefin Sans',
    fontSize: 24,
    fontWeight: FontWeight.w500,
  );
}

@immutable
class _Times {
  late final Duration veryLlow = const Duration(milliseconds: 2000);
  late final Duration slow = const Duration(milliseconds: 1000);
  late final Duration normal = const Duration(milliseconds: 500);
  late final Duration speed = const Duration(milliseconds: 300);
}

@immutable
class _Insets {
  late final double xxs = 4.sp;
  late final double xs = 8.sp;
  late final double sl = 12.sp;
  late final double s = 16.sp;
  late final double sm = 24.sp;
  late final double md = 30.sp;
  late final double lm = 38.sp;
}

@immutable
class _Colors {
  late final Color primary = const Color(0xFFFFA451);
  late final Color white = const Color(0xFFFFFFFF);
  late final Color black = const Color(0xFF000000);
  late final Color green = const Color(0xFF4CD964);
  late final Color red = const Color(0xFFFF3B30);
  late final Color fieldBackgroundColor = const Color(0xFFF3F1F1);
  late final Color textColor = const Color(0xFF27214D);
  late final Color hinttextColor = const Color(0xFFC2BDBD);
  late final Color inputFilledColor = const Color(0xFFF3F4F9);
  late final Color homeHinttextColor = const Color(0xFF86869E);
  late final Color tabLabelColor = const Color(0xFF938DB5);
  late final Color checkBackgroundColor = const Color(0xFfE0FFE5);
}

@immutable
class _Gradients {
  late final BoxShadow productCardShadow = BoxShadow(
    color: const Color(0xFF202020).withOpacity(0.05),
    blurRadius: 60,
    offset: const Offset(0, 30),
  );
}
