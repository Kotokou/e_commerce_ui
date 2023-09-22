import 'package:e_commerce_ui/constants/asset.dart';
import 'package:e_commerce_ui/constants/local_strings.dart';
import 'package:e_commerce_ui/models/product_model.dart';
import 'package:e_commerce_ui/views/basket/widgets/go_back.dart';
import 'package:e_commerce_ui/views/home/widgets/detail_bottom.dart';
import 'package:e_commerce_ui/views/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int item = 1;
  bool liked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $styles.colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: 100.h,
              width: 100.w,
            ),
            Container(
              height: 40.h,
              width: 100.w,
              color: $styles.colors.primary,
              padding: EdgeInsets.all($styles.insets.s),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [GoBack()],
                  ),
                  Container(
                    height: 22.h,
                    width: 60.w,
                    margin: EdgeInsets.only(top: $styles.insets.s),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.productModel.image),
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 38.h,
              left: 0,
              right: 0,
              child: Container(
                height: 62.h,
                padding: EdgeInsets.fromLTRB(
                  $styles.insets.sm,
                  $styles.insets.md,
                  $styles.insets.xs,
                  $styles.insets.xxs,
                ),
                decoration: BoxDecoration(
                  color: $styles.colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular($styles.insets.s),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.productModel.label,
                      style: $styles.text.bigLabelMeduim.copyWith(
                        color: $styles.colors.textColor,
                        letterSpacing: -.32,
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (item > 1) {
                              setState(() {
                                item -= 1;
                              });
                            }
                          },
                          child: SvgPicture.asset(Asset.minusIcon),
                        ),
                        SizedBox(width: $styles.insets.sm),
                        Text(
                          item.toString(),
                          style: $styles.text.largeLabelSemiMeduim.copyWith(
                            color: $styles.colors.textColor,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -.24,
                          ),
                        ),
                        SizedBox(width: $styles.insets.sm),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              item += 1;
                            });
                          },
                          child: Icon(
                            Icons.add_rounded,
                            color: $styles.colors.primary,
                            size: 32,
                          ),
                        ),
                        const Spacer(),
                        SvgPicture.asset(Asset.priceIcon),
                        SizedBox(width: $styles.insets.xxs),
                        Text(
                          widget.productModel.price,
                          style: $styles.text.largeLabelSemiMeduim.copyWith(
                            color: $styles.colors.primary,
                            fontWeight: FontWeight.w500,
                            letterSpacing: -.24,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      LocalStrings.detailLabel,
                      style: $styles.text.labelRegular.copyWith(
                        color: $styles.colors.textColor,
                        letterSpacing: -.2,
                      ),
                    ),
                    Container(
                      color: $styles.colors.primary,
                      height: 2,
                      child: Text(
                        LocalStrings.detailLabel,
                        style: $styles.text.labelRegular.copyWith(
                          color: $styles.colors.primary,
                          letterSpacing: -.2,
                        ),
                      ),
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      LocalStrings.detailDescription,
                      style: $styles.text.descriptionMeduim.copyWith(
                        color: $styles.colors.textColor,
                        letterSpacing: -.16,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 6.h),
                    Padding(
                      padding: EdgeInsets.only(right: $styles.insets.md),
                      child: Text(
                        LocalStrings.detailMore,
                        style: $styles.text.descriptionRegular.copyWith(
                          color: $styles.colors.black,
                          letterSpacing: -.14,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const DetailBottom(),
    );
  }
}
