import 'package:e_commerce_ui/constants/asset.dart';
import 'package:e_commerce_ui/constants/local_strings.dart';
import 'package:e_commerce_ui/utils/custom_images.dart';
import 'package:e_commerce_ui/views/auth/auth_screen.dart';
import 'package:e_commerce_ui/views/theme/app_style.dart';
import 'package:e_commerce_ui/common_wigets/landing_bottom_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $styles.colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 55.h,
              width: 100.w,
              color: $styles.colors.primary,
              child: Stack(
                children: [
                  Positioned(
                    top: 14.1.h,
                    right: 38.sp,
                    child: Image.asset(Asset.brand),
                  ),
                  Positioned(
                    top: 17.63.h,
                    left: 38.sp,
                    right: 38.sp,
                    child: Image.asset(Asset.welcomeImage),
                  ),
                  Positioned(
                    top: 32.9.h,
                    left: 38.sp,
                    right: 38.sp,
                    child: CustomImages.brand(
                      image: Asset.svgWelcomeBrand,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 7.05.h,
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
                  SizedBox(height: 1.h),
                  Text(
                    LocalStrings.welcomeDesc,
                    style: $styles.text.descriptionRegular.copyWith(
                      color: $styles.colors.textColor,
                      letterSpacing: -.16,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: LandingBottomButton(
        label: LocalStrings.welcomeButton,
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const AuthScreen(),
            ),
          );
        },
      ),
    );
  }
}
