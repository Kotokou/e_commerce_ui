import 'package:e_commerce_ui/constants/asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme/app_style.dart';

class CustomPrice extends StatelessWidget {
  const CustomPrice({
    super.key,
    required this.price,
    required this.style,
  });

  final String price;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          Asset.basketPriceIcon,
        ),
        SizedBox(width: $styles.insets.xs),
        Text(price, style: style),
      ],
    );
  }
}
