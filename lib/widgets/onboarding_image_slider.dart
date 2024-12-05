import 'package:flutter/material.dart';

class OnboardingImageSlider extends StatelessWidget {
  final String? imagePath;
  const OnboardingImageSlider({super.key, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return FractionalTranslation(
      translation: const Offset(0, 0.03),
      child: Image.asset(
        imagePath!,
        fit: BoxFit.cover,
        width: double.infinity,
      ),
    );
  }
}
