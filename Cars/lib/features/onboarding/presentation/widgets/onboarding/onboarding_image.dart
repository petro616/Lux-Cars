import 'package:flutter/material.dart';

class OnboardingImage extends StatelessWidget {
  final String imageName;
  const OnboardingImage({super.key, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: double.infinity,
        child: Image.asset(
          imageName,
          fit: BoxFit.contain,
        ));
  }
}
