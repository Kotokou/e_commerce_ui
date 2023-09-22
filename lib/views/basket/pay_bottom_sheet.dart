import 'package:e_commerce_ui/constants/local_strings.dart';
import 'package:e_commerce_ui/views/basket/widgets/custom_text_field.dart';
import 'package:e_commerce_ui/views/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PayBottomSheet extends StatelessWidget {
  const PayBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: $styles.colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular($styles.insets.sm),
          topRight: Radius.circular($styles.insets.sm),
        ),
      ),
      child: Stack(
        children: [
          // Positioned(
          //   top: 35.h,
          //   left: 0,
          //   right: 0,
          //   child: Container(
          //     height: 10.h,
          //     width: 10.h,
          //     decoration: BoxDecoration(
          //       shape: BoxShape.circle,
          //       color: $styles.colors.primary,
          //     ),
          //   ),
          // ),
          Container(
            height: 100.h,
            padding: EdgeInsets.only(
              top: 4.h,
              left: $styles.insets.sm,
              right: $styles.insets.sm,
            ),
            decoration: BoxDecoration(
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
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all($styles.insets.s),
                        backgroundColor: $styles.colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular($styles.insets.s),
                          side: BorderSide(
                            width: 1,
                            color: $styles.colors.primary,
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        LocalStrings.payOnDelivery,
                        style: $styles.text.descriptionMeduim.copyWith(
                          color: $styles.colors.primary,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all($styles.insets.s),
                        backgroundColor: $styles.colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular($styles.insets.s),
                          side: BorderSide(
                            width: 1,
                            color: $styles.colors.primary,
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        LocalStrings.payWithCard,
                        style: $styles.text.descriptionMeduim.copyWith(
                          color: $styles.colors.primary,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
