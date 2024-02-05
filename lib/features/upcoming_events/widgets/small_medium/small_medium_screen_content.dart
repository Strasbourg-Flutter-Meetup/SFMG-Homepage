// Project: SFMG Homepage
// Author: Daniel Krentzlin
// Dev Environment: Android Studio
// Platform: Windows 11
// Copyright:  2024
// ID: 20240205084902
// 05/02/2024 08:49
import 'package:flutter/material.dart';
import 'package:sfmg_homepage/features/upcoming_events/widgets/small_medium/small_medium_upcoming_events_image_section.dart';

import '../../../../shared/extensions/build_context_extension.dart';
import '../../../../shared/ui/seo_text_widget.dart';
import '../event_card_section.dart';

/// The SmallMediumScreenContent widget structures the content for small and medium screens
/// within the context of an Upcoming Events section. It adapts the layout based on the screen size,
/// ensuring a user-friendly and aesthetically pleasing presentation of event details.
class SmallMediumScreenContent extends StatelessWidget {
  /// The screen size class determines how the content is structured and laid out.
  /// It differentiates between small and medium screens, adjusting the layout accordingly.
  final ScreenSizeClass screenSizeClass;

  /// Creates a SmallMediumScreenContent widget.
  ///
  /// This widget should be used in the context of an Upcoming Events section
  /// where the screen size is either small or medium. It ensures the content is presented
  /// in an optimized and readable manner for smaller screens.
  const SmallMediumScreenContent({super.key, required this.screenSizeClass});

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
        ),
        const SizedBox(height: 32.0),
        // Widget to display SEO optimized text for the event description.
        SeoTextWidget(
          text: context.appLocalizations?.upcomingEventsText ??
              'Join our bi-weekly sessions, where we delve into latest Flutter topics and collaborate on ongoing projects.',
          style: Theme.of(context).textTheme.bodyLarge,
          padding: const EdgeInsets.only(left: 12.0, bottom: 24.0),
        ),
        // Conditional layout based on screen size class.
        // For small screens, content is presented in a column. For medium screens, it's presented in a row.
        if (screenSizeClass == ScreenSizeClass.smallScreen)
          Column(
            children: [
              SmallMediumUpcomingEventsImageSection(
                  screenSizeClass: screenSizeClass),
              const EventCardsSection(),
            ],
          )
        else
          Row(
            children: [
              SmallMediumUpcomingEventsImageSection(
                screenSizeClass: screenSizeClass,
              ),
              const Expanded(child: EventCardsSection()),
            ],
          ),
      ],
    );
  }
}
