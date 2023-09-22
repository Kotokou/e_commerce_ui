import 'package:e_commerce_ui/constants/local_strings.dart';
import 'package:e_commerce_ui/views/basket/widgets/go_back.dart';
import 'package:e_commerce_ui/views/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BasketHeader extends StatelessWidget {
  const BasketHeader({super.key});

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
            LocalStrings.myBasket,
            style: $styles.text.largeLabelSemiMeduim.copyWith(
              color: $styles.colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
