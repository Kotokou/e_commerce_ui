import 'package:dotted_line/dotted_line.dart';
import 'package:e_commerce_ui/common_wigets/custom_header.dart';
import 'package:e_commerce_ui/constants/asset.dart';
import 'package:e_commerce_ui/constants/local_strings.dart';
import 'package:e_commerce_ui/views/theme/app_style.dart';
import 'package:e_commerce_ui/views/track/widgets/delivery_man_item.dart';
import 'package:e_commerce_ui/views/track/widgets/order_track_success_item.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TrackOrderScreen extends StatelessWidget {
  const TrackOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $styles.colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const CustomHeader(title: LocalStrings.myBasket),
            Container(
              height: 82.h,
              width: 100.w,
              padding: EdgeInsets.only(
                left: 5.w,
                right: 5.w,
                top: 5.h,
                bottom: 1.h,
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: $styles.insets.md,
                      vertical: $styles.insets.md,
                    ),
                    child: DottedLine(
                      direction: Axis.vertical,
                      dashColor: $styles.colors.primary,
                      lineThickness: 3,
                      dashGapLength: 1.5.h,
                      dashLength: 4,
                    ),
                  ),
                  SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const OrderTrackSuccessItem(
                          image: Asset.customerOrder,
                          label: LocalStrings.orderTaken,
                        ),
                        SizedBox(height: 5.h),
                        const OrderTrackSuccessItem(
                          image: Asset.order,
                          label: LocalStrings.orderPrepared,
                        ),
                        SizedBox(height: 5.h),
                        const DeliveryManItem(),
                        SizedBox(height: 2.h),
                        Container(
                          height: 20.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage(Asset.map),
                            ),
                            borderRadius:
                                BorderRadius.circular($styles.insets.sm),
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Row(
                          children: [
                            Container(
                              height: 6.h,
                              width: 10.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: $styles.colors.green,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.done_rounded,
                                  color: $styles.colors.white,
                                  size: $styles.insets.sm,
                                ),
                              ),
                            ),
                            SizedBox(width: 5.w),
                            Text(
                              LocalStrings.orderReceived,
                              style: $styles.text.descriptionMeduim.copyWith(
                                color: $styles.colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
