import 'package:e_commerce_ui/constants/local_strings.dart';
import 'package:e_commerce_ui/views/basket/successfuly_screen.dart';
import 'package:e_commerce_ui/views/basket/widgets/close_circle.dart';
import 'package:e_commerce_ui/views/basket/widgets/custom_text_field.dart';
import 'package:e_commerce_ui/views/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PayWithCardBottomSheet extends StatelessWidget {
  const PayWithCardBottomSheet({super.key});

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
              top: 15.h,
              left: 0,
              right: 0,
              child: Container(
                height: 85.h,
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
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomTextField(
                        label: LocalStrings.cardHoldersName,
                        hintText: LocalStrings.cardHoldersNameHintText,
                      ),
                      SizedBox(height: 3.h),
                      const CustomTextField(
                        label: LocalStrings.cardNumber,
                        hintText: LocalStrings.cardNumberHintText,
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 40.w,
                            child: const CustomTextField(
                              label: LocalStrings.date,
                              hintText: LocalStrings.dateHintText,
                            ),
                          ),
                          SizedBox(
                            width: 30.w,
                            child: const CustomTextField(
                              label: LocalStrings.ccv,
                              hintText: LocalStrings.ccvHintText,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 30.h,
              left: 0,
              right: 0,
              child: const CloseCircle(),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 9.h,
                width: 100.w,
                decoration: BoxDecoration(
                  color: $styles.colors.primary,
                  borderRadius: BorderRadius.all(
                    Radius.circular($styles.insets.s),
                  ),
                ),
                child: Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all($styles.insets.xs),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular($styles.insets.xs),
                          ),
                        ),
                        backgroundColor: $styles.colors.white),
                    onPressed: () {
                      Navigator.of(context).pop();

                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SuccessfulyScreen(),
                        ),
                      );
                    },
                    child: Text(
                      LocalStrings.completeOrder,
                      style: $styles.text.descriptionMeduim.copyWith(
                        color: $styles.colors.primary,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
