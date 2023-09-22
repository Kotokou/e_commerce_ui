import 'package:e_commerce_ui/constants/local_strings.dart';
import 'package:e_commerce_ui/views/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SuccessfulyScreen extends StatelessWidget {
  const SuccessfulyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $styles.colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: $styles.colors.checkBackgroundColor,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 2,
                      color: $styles.colors.green,
                    ),
                  ),
                ),
                Positioned(
                  top: 8.w,
                  left: 8.w,
                  right: 8.w,
                  bottom: 8.w,
                  child: Container(
                    width: 32.w,
                    height: 32.w,
                    decoration: BoxDecoration(
                      color: $styles.colors.green,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.done_rounded,
                        size: $styles.insets.lm,
                        color: $styles.colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // SizedBox(height: 1.h),
            Text(
              LocalStrings.congrats,
              style: $styles.text.bigLabelMeduim.copyWith(
                color: $styles.colors.textColor,
              ),
            ),
            SizedBox(height: 2.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Text(
                LocalStrings.successMessage,
                style: $styles.text.labelRegular.copyWith(
                  color: $styles.colors.textColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 8.h),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular($styles.insets.xs),
                ),
                backgroundColor: $styles.colors.primary,
                padding: EdgeInsets.symmetric(
                  vertical: $styles.insets.sm,
                  horizontal: 15.w,
                ),
              ),
              onPressed: () {},
              child: Text(
                LocalStrings.trackOrder,
                style: $styles.text.labelMeduim.copyWith(
                  color: $styles.colors.white,
                ),
              ),
            ),
            SizedBox(height: 8.h),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular($styles.insets.xs),
                  side: BorderSide(color: $styles.colors.primary),
                ),
                backgroundColor: $styles.colors.white,
                padding: EdgeInsets.symmetric(
                  vertical: $styles.insets.sm,
                  horizontal: 20.w,
                ),
              ),
              onPressed: () {},
              child: Text(
                LocalStrings.continueShopping,
                style: $styles.text.descriptionMeduim.copyWith(
                  color: $styles.colors.primary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
