// Project: SFMG Homepage
// Author: Daniel Krentzlin
// Dev Environment: Android Studio
// Platform: Windows 11
// Copyright:  2024
// ID: 20240205085220
// 05/02/2024 08:52
import 'package:flutter/material.dart';
import 'package:seo/seo.dart';

import '../../../../shared/extensions/build_context_extension.dart';

/// The SmallMediumUpcomingEventsImageScreen widget is designed to display an image
/// specifically for the small and medium screen layouts of the Upcoming Events section.
///
/// This widget encapsulates the functionality for displaying an image with SEO considerations,
/// ensuring the image is properly indexed by search engines and displayed with the correct
/// constraints and sizing based on the screen size.
class SmallMediumUpcomingEventsImageScreen extends StatelessWidget {
  /// The screen size class determines how the image is displayed.
  /// It differentiates between small and medium screens, adjusting the image size and layout accordingly.
  final ScreenSizeClass screenSizeClass;

  /// Creates a SmallMediumUpcomingEventsImageScreen widget.
  ///
  /// This widget should be used when you want to display an event-related image
  /// in a small or medium screen environment, ensuring it adheres to SEO standards
  /// and is properly sized and positioned.
  const SmallMediumUpcomingEventsImageScreen(
      {super.key, required this.screenSizeClass});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0, left: 12.0),
      // SEO optimized image widget, ensuring the image has the correct alt text for SEO purposes.
      child: Seo.image(
        alt: 'La Plage Digitale - Strasbourg',
        src: 'https://flutter-sxb.dev/assets/assets/images/la_plage_digitale.jpg',
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          // The actual image being displayed, with conditional sizing based on the screen size class.
          child: Image.asset(
            'assets/images/la_plage_digitale.jpg',
            height: 150.0,
            width: screenSizeClass == ScreenSizeClass.smallScreen
                ? MediaQuery.of(context).size.width
                : null,
            fit: screenSizeClass == ScreenSizeClass.smallScreen
                ? BoxFit.cover
                : null,
          ),
        ),
      ),
    );
  }
}
