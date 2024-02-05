// Project: SFMG Homepage
// Author: Daniel Krentzlin
// Dev Environment: Android Studio
// Platform: Windows 11
// Copyright:  2024
// ID: 20240205085007
// 05/02/2024 08:50
import 'package:flutter/material.dart';
import 'package:seo/seo.dart';

class SeoTextWidget extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final EdgeInsetsGeometry? padding;

  const SeoTextWidget({
    super.key,
    required this.text,
    this.style,
    this.padding = const EdgeInsets.only(left: 12.0),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding!,
      child: Seo.text(
        text: text,
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }
}
