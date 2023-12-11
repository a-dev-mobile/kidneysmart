import 'package:flutter/material.dart';

class OnboardingItemImage extends StatelessWidget {
  const OnboardingItemImage({
    required this.assetName,
    super.key,
  });
  final String assetName;
  @override
  Widget build(BuildContext context) {
    return Image.asset(assetName, width: 150);
  }
}
