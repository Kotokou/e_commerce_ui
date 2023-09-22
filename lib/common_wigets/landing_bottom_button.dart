import 'package:e_commerce_ui/views/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LandingBottomButton extends StatelessWidget {
  const LandingBottomButton({
    super.key,
    required this.label,
    this.onTap,
  });

  final String label;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24.sp,
        vertical: 2.h,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: $styles.colors.primary,
          minimumSize: Size.fromHeight(8.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.sp),
            ),
          ),
        ),
        onPressed: onTap,
        child: Text(
          label,
          style: $styles.text.buttonTitle.copyWith(
            color: $styles.colors.white,
          ),
        ),
      ),
    );
  }
}
