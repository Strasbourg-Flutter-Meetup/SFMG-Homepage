// Project: SFMG Homepage
// Author: Daniel Krentzlin
// Dev Environment: Android Studio
// Platform: Windows 11
// Copyright:  2024
// ID: 20240110095235
// 10.01.2024 09:52
import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:sfmg_homepage/features/about_us/about_us.dart';
import 'package:sfmg_homepage/features/social_media/social_media.dart';
import 'package:sfmg_homepage/shared/ui/appbar/appbar_template.dart';
import 'package:sfmg_homepage/shared/ui/screen_template.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) => ScreenTemplate(
      appBarTemplate: const AppBarTemplate(
        isHomepage: true,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          children: [
            AutoScrollTag(
                key: const ValueKey(1),
                controller: controller,
                index: 1,
                child: const AboutUs()),
            const SizedBox(
              height: 64.0,
            ),
            AutoScrollTag(
                key: const ValueKey(2),
                controller: controller,
                index: 2,
                child: const SocialMedia()),
          ],
        ),
      ));
}
