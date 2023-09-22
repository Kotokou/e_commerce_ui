import 'package:e_commerce_ui/views/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OrderTrackSuccessItem extends StatelessWidget {
  const OrderTrackSuccessItem({
    super.key,
    required this.image,
    required this.label,
  });

  final String image;
  final String label;

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
            image: DecorationImage(
              image: AssetImage(image),
            ),
          ),
        ),
        SizedBox(width: 5.w),
        Text(
          label,
          style: $styles.text.descriptionMeduim.copyWith(
            color: $styles.colors.black,
          ),
        ),
        const Spacer(),
        Container(
          height: 8.w,
          width: 8.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: $styles.colors.green,
          ),
          child: Icon(
            Icons.done_rounded,
            color: $styles.colors.white,
          ),
        ),
      ],
    );
  }
}
