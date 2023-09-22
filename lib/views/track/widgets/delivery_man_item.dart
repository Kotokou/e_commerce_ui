import 'package:e_commerce_ui/constants/asset.dart';
import 'package:e_commerce_ui/constants/local_strings.dart';
import 'package:e_commerce_ui/views/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class DeliveryManItem extends StatelessWidget {
  const DeliveryManItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 2 * $styles.insets.md,
          width: 2 * $styles.insets.md,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular($styles.insets.s)),
            image: const DecorationImage(
              image: AssetImage(Asset.deliveryMan),
            ),
          ),
        ),
        SizedBox(width: 5.w),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              LocalStrings.orderPrepared,
              style: $styles.text.descriptionMeduim.copyWith(
                color: $styles.colors.black,
              ),
            ),
            SizedBox(height: 1.h),
            Text(
              LocalStrings.agentIsComming,
              style: $styles.text.smallDescriptionRegular.copyWith(
                color: $styles.colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        const Spacer(),
        Container(
          height: $styles.insets.md,
          width: $styles.insets.md,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: $styles.colors.primary,
          ),
          child: Padding(
            padding: EdgeInsets.all($styles.insets.xs),
            child: SvgPicture.asset(Asset.callIcon),
          ),
        ),
      ],
    );
  }
}
