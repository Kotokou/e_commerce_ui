import 'package:e_commerce_ui/views/theme/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import '../../../constants/asset.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({
    super.key,
    required this.productLabel,
    required this.price,
    required this.productImage,
    this.onTap,
  });

  final String productLabel;
  final String price;
  final String productImage;
  final void Function()? onTap;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool liked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 20.h,
        width: 50.w,
        padding: EdgeInsets.all($styles.insets.s),
        decoration: BoxDecoration(
          color: $styles.colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular($styles.insets.xs),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 2.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        liked = (!liked);
                      });
                    },
                    icon: Icon(
                      liked ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
                      color: $styles.colors.primary,
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              widget.productImage,
              width: 10.h,
              height: 10.h,
            ),
            SizedBox(height: 1.h),
            SizedBox(
              height: 3.h,
              width: 45.w,
              child: Text(
                widget.productLabel.toString(),
                style: $styles.text.descriptionRegular.copyWith(
                  color: $styles.colors.textColor,
                  fontWeight: FontWeight.w500,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(height: 1.h),
            SizedBox(
              height: 3.h,
              child: Row(
                children: [
                  SvgPicture.asset(Asset.priceIcon),
                  SizedBox(width: $styles.insets.xxs),
                  Text(
                    widget.price.toString(),
                    style: $styles.text.descriptionRegular.copyWith(
                      color: $styles.colors.primary,
                      fontWeight: FontWeight.w500,
                    ),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  Icon(
                    Icons.add_rounded,
                    size: $styles.insets.sm,
                    color: $styles.colors.primary,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
