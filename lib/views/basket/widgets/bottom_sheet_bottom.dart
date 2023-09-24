import 'package:e_commerce_ui/constants/local_strings.dart';
import 'package:e_commerce_ui/views/basket/pay_with_card_bottom_sheet.dart';
import 'package:e_commerce_ui/views/basket/successfuly_screen.dart';
import 'package:e_commerce_ui/views/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BottomSheetBottom extends StatelessWidget {
  const BottomSheetBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 1.h),
      child: Row(
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
            onPressed: () {
              Navigator.of(context).pop();

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SuccessfulyScreen(),
                ),
              );
            },
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
            onPressed: () {
              Navigator.of(context).pop();

              Scaffold.of(context).showBottomSheet(
                backgroundColor: Colors.transparent,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.zero),
                ),
                elevation: 0,
                (context) {
                  return const PayWithCardBottomSheet();
                },
              );
            },
            child: Text(
              LocalStrings.payWithCard,
              style: $styles.text.descriptionMeduim.copyWith(
                color: $styles.colors.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
