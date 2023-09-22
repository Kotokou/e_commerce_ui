import 'package:e_commerce_ui/constants/local_strings.dart';
import 'package:e_commerce_ui/views/basket/widgets/bottom_sheet_bottom.dart';
import 'package:e_commerce_ui/views/basket/widgets/close_circle.dart';
import 'package:e_commerce_ui/views/basket/widgets/custom_text_field.dart';
import 'package:e_commerce_ui/views/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PayBottomSheet extends StatelessWidget {
  const PayBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: $styles.colors.black.withOpacity(0.25),
      child: Container(
        color: $styles.colors.black.withOpacity(0.25),
        height: 100.h,
        width: 100.w,
        child: Stack(
          children: [
            Positioned(
              top: 25.h,
              left: 0,
              right: 0,
              child: Container(
                height: 75.h,
                margin: EdgeInsets.only(top: 25.h),
                padding: EdgeInsets.only(
                  top: 4.h,
                  left: $styles.insets.sm,
                  right: $styles.insets.sm,
                ),
                decoration: BoxDecoration(
                  color: $styles.colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular($styles.insets.sm),
                    topRight: Radius.circular($styles.insets.sm),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomTextField(
                      label: LocalStrings.deliveryAddress,
                      hintText: LocalStrings.addressHintText,
                    ),
                    SizedBox(height: 3.h),
                    const CustomTextField(
                      label: LocalStrings.phoneNumber,
                      hintText: LocalStrings.phoneNumberHintText,
                    ),
                    SizedBox(height: 3.h),
                    const BottomSheetBottom(),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 40.h,
              left: 0,
              right: 0,
              child: const CloseCircle(),
            ),
          ],
        ),
      ),
    );
  }
}
