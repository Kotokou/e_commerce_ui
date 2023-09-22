import 'package:e_commerce_ui/constants/local_strings.dart';
import 'package:e_commerce_ui/utils/database.dart';
import 'package:e_commerce_ui/views/basket/widgets/basket_bottom.dart';
import 'package:e_commerce_ui/common_wigets/custom_header.dart';
import 'package:e_commerce_ui/views/basket/widgets/order_list_item.dart';
import 'package:e_commerce_ui/views/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $styles.colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const CustomHeader(title: LocalStrings.myBasket),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 7.h,
                  left: $styles.insets.s,
                  right: $styles.insets.s,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(
                      4,
                      (index) => Column(
                        children: [
                          OrderListItem(
                            orderModel: orderList[index],
                          ),
                          SizedBox(height: 6.h),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const BasketBottom(),
          ],
        ),
      ),
    );
  }
}
