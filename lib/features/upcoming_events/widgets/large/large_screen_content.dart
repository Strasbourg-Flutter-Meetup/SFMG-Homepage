// Project: SFMG Homepage
// Author: Daniel Krentzlin
// Dev Environment: Android Studio
// Platform: Windows 11
// Copyright:  2024
// ID: 20240205085755
// 05/02/2024 08:57
import 'package:flutter/material.dart';
import 'package:sfmg_homepage/shared/extensions/build_context_extension.dart';

import '../../../../shared/ui/seo_text_widget.dart';
import 'event_details_large_screen.dart';

/// The LargeScreenContent widget is designed to structure the content for large screens
/// within the context of an Upcoming Events section of a webpage or application.
///
/// This widget lays out the title and detailed event content in a column,
/// optimizing the space and presentation for large screen devices.
class LargeScreenContent extends StatelessWidget {
  /// Creates a LargeScreenContent widget.
  ///
  /// This widget should be used in the context of an Upcoming Events section
  /// where the screen size is large enough to accommodate expanded content and layout.
  const LargeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // SEO optimized text widget for displaying the title of the upcoming events section.
        SeoTextWidget(
          text: context.appLocalizations?.upcomingEventsTitle ??
              'Upcoming Events',
          style: Theme.of(context).textTheme.titleLarge,
          padding: const EdgeInsets.only(left: 32.0),
        ),
        const SizedBox(height: 32.0),
        // Widget that handles the layout and content of event details specifically for large screens.
        const EventDetailsLargeScreen(),
      ],
    );
  }
}
