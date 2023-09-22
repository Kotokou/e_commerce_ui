import 'package:e_commerce_ui/views/basket/widgets/go_back.dart';
import 'package:e_commerce_ui/views/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18.h,
      padding: EdgeInsets.symmetric(horizontal: $styles.insets.s),
      decoration: BoxDecoration(
        color: $styles.colors.primary,
      ),
      child: Row(
        children: [
          const GoBack(),
          SizedBox(width: 10.w),
          Text(
            title,
            style: $styles.text.largeLabelSemiMeduim.copyWith(
              color: $styles.colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
