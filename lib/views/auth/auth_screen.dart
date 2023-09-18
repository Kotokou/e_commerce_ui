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
                  child: Image.asset(Asset.authImage),
                ),
                Positioned(
                  top: 280,
                  left: 38.sp,
                  right: 38.sp,
                  child: CustomImages.brand(
                    image: Asset.svgAuthBrand,
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
                const SizedBox(height: 16),
                SizedBox(
                  height: 56,
                  child: TextFormField(
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
                ),
                const SizedBox(height: 42),
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
                    if (controller.text.isNotEmpty) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    }
                  },
                  child: Text(
                    LocalStrings.authButton,
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
