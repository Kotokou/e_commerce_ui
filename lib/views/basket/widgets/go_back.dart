import 'package:e_commerce_ui/views/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../constants/local_strings.dart';

class GoBack extends StatelessWidget {
  const GoBack({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Container(
        height: 5.h,
        width: 25.w,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: $styles.colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(100),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.arrow_back_ios_rounded,
              color: $styles.colors.black,
            ),
            Text(
              LocalStrings.goBack,
              style: $styles.text.descriptionRegular.copyWith(
                color: $styles.colors.textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
