import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../theme/app_style.dart';

class CloseCircle extends StatelessWidget {
  const CloseCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Container(
        height: 7.h,
        width: 7.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: $styles.colors.white,
        ),
        child: Center(
          child: Icon(
            Icons.close_rounded,
            color: $styles.colors.black,
            size: $styles.insets.md,
          ),
        ),
      ),
    );
  }
}
