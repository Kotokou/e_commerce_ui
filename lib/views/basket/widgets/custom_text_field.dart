import 'package:e_commerce_ui/views/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.label,
    required this.hintText,
  });

  final String label;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: $styles.text.labelMeduim.copyWith(
            color: $styles.colors.textColor,
          ),
        ),
        SizedBox(height: 2.h),
        TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              vertical: $styles.insets.s,
              horizontal: $styles.insets.sm,
            ),
            fillColor: $styles.colors.fieldBackgroundColor,
            filled: true,
            hintText: hintText,
            hintStyle: $styles.text.labelRegular.copyWith(
              color: $styles.colors.hinttextColor,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular($styles.insets.s),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}
