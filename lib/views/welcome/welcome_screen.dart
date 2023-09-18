import 'package:e_commerce_ui/constants/asset.dart';
import 'package:e_commerce_ui/constants/local_strings.dart';
import 'package:e_commerce_ui/utils/custom_images.dart';
import 'package:e_commerce_ui/views/auth/auth_screen.dart';
import 'package:e_commerce_ui/views/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $styles.colors.white,
      body: Column(
        children: [
          Container(
            height: 55.h,
            width: 100.w,
            color: $styles.colors.primary,
            child: Stack(
              children: [
                Positioned(
                  top: 120,
                  right: 38,
                  child: Image.asset(Asset.brand),
                ),
                Positioned(
                  top: 150,
                  left: 38.sp,
                  right: 38.sp,
                  child: Image.asset(Asset.welcomeImage),
                ),
                Positioned(
                  top: 280,
                  left: 38.sp,
                  right: 38.sp,
                  child: CustomImages.brand(
                    image: Asset.svgWelcomeBrand,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 45.h,
            width: 100.w,
            padding: EdgeInsets.only(
              top: 60,
              left: 24.sp,
              right: 24.sp,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  LocalStrings.welcomeLabel,
                  style: $styles.text.labelRegular.copyWith(
                    color: $styles.colors.textColor,
                    letterSpacing: -.2,
                  ),
                ),
                Text(
                  LocalStrings.welcomeDesc,
                  style: $styles.text.descriptionRegular.copyWith(
                    color: $styles.colors.textColor,
                    letterSpacing: -.16,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 58),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: $styles.colors.primary,
                    minimumSize: const Size.fromHeight(56),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.sp),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AuthScreen(),
                      ),
                    );
                  },
                  child: Text(
                    LocalStrings.welcomeButton,
                    style: $styles.text.buttonTitle.copyWith(
                      color: $styles.colors.white,
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
