import 'package:e_commerce_ui/common_wigets/custom_button.dart';
import 'package:e_commerce_ui/constants/local_strings.dart';
import 'package:e_commerce_ui/views/basket/pay_bottom_sheet.dart';
import 'package:e_commerce_ui/views/basket/widgets/custom_price.dart';
import 'package:e_commerce_ui/views/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BasketBottom extends StatelessWidget {
  const BasketBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: $styles.insets.s),
      height: 18.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                LocalStrings.total,
                style: $styles.text.descriptionMeduim.copyWith(
                  color: $styles.colors.black,
                ),
              ),
              CustomPrice(
                price: "60, 000",
                style: $styles.text.largeLabelSemiMeduim.copyWith(
                  color: $styles.colors.textColor,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -.24,
                ),
              ),
            ],
          ),
          CustomButton(
            label: LocalStrings.checkout,
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => const PayBottomSheet(),
              );
            },
          ),
        ],
      ),
    );
  }
}
