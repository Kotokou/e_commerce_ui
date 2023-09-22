import 'package:e_commerce_ui/constants/local_strings.dart';
import 'package:e_commerce_ui/models/order_model.dart';
import 'package:e_commerce_ui/views/basket/widgets/custom_price.dart';
import 'package:e_commerce_ui/views/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OrderListItem extends StatelessWidget {
  const OrderListItem({
    super.key,
    required this.orderModel,
  });

  final OrderModel orderModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          orderModel.productModel.image,
          width: 20.w,
        ),
        SizedBox(width: $styles.insets.sm),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              orderModel.productModel.label,
              style: $styles.text.descriptionMeduim.copyWith(
                color: $styles.colors.black,
              ),
            ),
            Text.rich(
              TextSpan(
                text: orderModel.qte.toString(),
                style: $styles.text.smallDescriptionRegular.copyWith(
                  color: $styles.colors.black,
                ),
                children: [
                  TextSpan(
                    text: LocalStrings.packs,
                    style: $styles.text.smallDescriptionRegular.copyWith(
                      color: $styles.colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Spacer(),
        CustomPrice(
          price: orderModel.productModel.price,
          style: $styles.text.descriptionMeduim.copyWith(
            color: $styles.colors.textColor,
          ),
        ),
      ],
    );
  }
}
