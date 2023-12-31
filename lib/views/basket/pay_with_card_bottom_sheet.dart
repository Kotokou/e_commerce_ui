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
      color: Colors.transparent,
      child: Container(
        color: $styles.colors.black.withOpacity(0.25),
        height: 100.h,
        width: 100.w,
        child: Stack(
          children: [
            Positioned(
              top: 10.h,
              left: 0,
              right: 0,
              child: Container(
                height: 90.h,
                margin: EdgeInsets.only(top: 25.h),
                padding: EdgeInsets.only(
                  top: 4.h,
                  left: $styles.insets.s,
                  right: $styles.insets.s,
                  bottom: 2.h,
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
                    SizedBox(
                      height: 15.h,
                      child: const CustomTextField(
                        label: LocalStrings.cardHoldersName,
                        hintText: LocalStrings.cardHoldersNameHintText,
                      ),
                    ),
                    SizedBox(height: 2.h),
                    SizedBox(
                      height: 15.h,
                      child: const CustomTextField(
                        label: LocalStrings.cardNumber,
                        hintText: LocalStrings.cardNumberHintText,
                      ),
                    ),
                    SizedBox(height: 2.h),
                    SizedBox(
                      height: 15.h,
                      child: Row(
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
                    ),
                    SizedBox(height: 2.h),
                    Container(
                      height: 8.h,
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
                  ],
                ),
              ),
            ),
            Positioned(
              top: 25.h,
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
