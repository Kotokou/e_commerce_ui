import 'package:e_commerce_ui/common_wigets/landing_bottom_button.dart';
import 'package:e_commerce_ui/constants/asset.dart';
import 'package:e_commerce_ui/constants/local_strings.dart';
import 'package:e_commerce_ui/utils/custom_images.dart';
import 'package:e_commerce_ui/views/home/home_screen.dart';
import 'package:e_commerce_ui/views/theme/app_style.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController controller = TextEditingController();
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
                    child: Image.asset(Asset.authImage),
                  ),
                  Positioned(
                    top: 32.9.h,
                    left: 38.sp,
                    right: 38.sp,
                    child: CustomImages.brand(
                      image: Asset.svgAuthBrand,
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
                  SizedBox(height: $styles.insets.s),
                  TextFormField(
                    controller: controller,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                        left: 24.sp,
                        top: 14.sp,
                        bottom: 14.sp,
                      ),
                      hintText: LocalStrings.hintText,
                      hintStyle: $styles.text.labelRegular.copyWith(
                        fontWeight: FontWeight.w400,
                        color: $styles.colors.hinttextColor,
                      ),
                      fillColor: $styles.colors.fieldBackgroundColor,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.sp),
                        ),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: LandingBottomButton(
        label: LocalStrings.authButton,
        onTap: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ),
          );
        },
      ),
    );
  }
}
