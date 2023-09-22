import 'package:e_commerce_ui/common_wigets/custom_button.dart';
import 'package:e_commerce_ui/constants/local_strings.dart';
import 'package:e_commerce_ui/views/basket/basket_screen.dart';
import 'package:e_commerce_ui/views/theme/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DetailBottom extends StatefulWidget {
  const DetailBottom({super.key});

  @override
  State<DetailBottom> createState() => _DetailBottomState();
}

class _DetailBottomState extends State<DetailBottom> {
  bool liked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: $styles.insets.s),
      height: 18.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                liked = (!liked);
              });
            },
            child: Icon(
              liked ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
              size: $styles.insets.md,
              color: $styles.colors.primary,
            ),
          ),
          const Spacer(),
          CustomButton(
            label: LocalStrings.addToBasket,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const BasketScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
