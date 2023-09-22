import 'package:e_commerce_ui/views/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.label,
    this.onTap,
  });

  final String label;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            $styles.insets.xs,
          ),
          side: BorderSide.none,
        ),
        backgroundColor: $styles.colors.primary,
        padding: EdgeInsets.symmetric(
          vertical: $styles.insets.s,
          horizontal: 15.w,
        ),
      ),
      onPressed: onTap,
      child: Text(
        label,
        style: $styles.text.descriptionMeduim.copyWith(
          color: $styles.colors.white,
        ),
      ),
    );
  }
}
