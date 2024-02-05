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
import 'package:sfmg_homepage/features/upcoming_events/upcoming_events.dart';
import 'package:sfmg_homepage/shared/extensions/build_context_extension.dart';
import 'package:sfmg_homepage/shared/ui/appbar/appbar_template.dart';
import 'package:sfmg_homepage/shared/ui/screen_template.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) => Builder(builder: (context) {
        final screenSizeClass = context.getScreenSizeClass();

        return ScreenTemplate(
            appBarTemplate: const AppBarTemplate(
              isHomepage: true,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenSizeClass == ScreenSizeClass.largeScreen
                        ? 32.0
                        : 12.0,
                  ),
                  child: AutoScrollTag(
                      key: const ValueKey(1),
                      controller: controller,
                      index: 1,
                      child: const AboutUs()),
                ),
                const SizedBox(
                  height: 64.0,
                ),
                AutoScrollTag(
                  key: const ValueKey(2),
                  controller: controller,
                  index: 2,
                  child: const UpcomingEvents(),
                ),
                const SizedBox(
                  height: 64.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenSizeClass == ScreenSizeClass.largeScreen
                        ? 32.0
                        : 12.0,
                  ),
                  child: AutoScrollTag(
                      key: const ValueKey(5),
                      controller: controller,
                      index: 5,
                      child: const SocialMedia()),
                ),
              ],
            ));
      });
}
