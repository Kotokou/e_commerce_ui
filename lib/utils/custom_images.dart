import 'package:e_commerce_ui/constants/asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class CustomImages {
  CustomImages._();

  static Widget brand({required String image}) {
    return SvgPicture.asset(
      image,
      width: 80.w,
      height: 35.h,
    );
  }

  static Widget splash() {
    return SvgPicture.asset(
      Asset.svgSplash,
      width: 50.w,
      height: 30.h,
    );
  }
}
