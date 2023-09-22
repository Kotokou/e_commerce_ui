import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
  late final TextStyle splashLabel = GoogleFonts.badScript(
    fontSize: 24,
    fontWeight: FontWeight.normal,
  );
  late final TextStyle largeLabelSemiMeduim = GoogleFonts.josefinSans(
    fontSize: 24,
    fontWeight: FontWeight.w500,
  );

  late final TextStyle bigLabelMeduim = GoogleFonts.josefinSans(
    fontSize: 32,
    fontWeight: FontWeight.w500,
  );

  late final TextStyle buttonTitle = GoogleFonts.josefinSans(
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  late final TextStyle labelMeduim = GoogleFonts.josefinSans(
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  late final TextStyle largeLabelMeduim = GoogleFonts.josefinSans(
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );

  late final TextStyle labelRegular = GoogleFonts.josefinSans(
    fontSize: 20,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
  );

  late final TextStyle descriptionRegular = GoogleFonts.josefinSans(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  late final TextStyle smallDescriptionRegular = GoogleFonts.josefinSans(
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
  );

  late final TextStyle descriptionMeduim = GoogleFonts.josefinSans(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  late final TextStyle smallLabelRegular = GoogleFonts.josefinSans(
    fontSize: 10,
    fontWeight: FontWeight.w400,
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
