import 'package:e_commerce_ui/utils/custom_images.dart';
import 'package:e_commerce_ui/views/theme/app_style.dart';
import 'package:e_commerce_ui/views/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed($styles.times.slow).then(
      (value) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const WelcomeScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $styles.colors.white,
      body: Center(
        child: CustomImages.splash(),
      ),
    );
  }
}
