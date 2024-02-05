// Project: SFMG Homepage
// Author: Daniel Krentzlin
// Dev Environment: Android Studio
// Platform: Windows 11
// Copyright:  2024
// ID: 20240205085636
// 05/02/2024 08:56
import 'package:flutter/material.dart';
import 'package:sfmg_homepage/shared/extensions/build_context_extension.dart';

import '../../../../shared/ui/seo_text_widget.dart';
import '../event_card_section.dart';
import 'upcoming_events_image_large_screen.dart';

/// The EventDetailsLargeScreen is a widget that displays the details of upcoming events
/// in a layout optimized for large screens. It uses a row layout to present an image
/// of the event location alongside the event details and a list of event cards.
class EventDetailsLargeScreen extends StatelessWidget {
  /// Creates an EventDetailsLargeScreen widget.
  ///
  /// This widget is used within the UpcomingEvents widget to display event details
  /// specifically formatted for large screen sizes.
  const EventDetailsLargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0, bottom: 24.0),
      child: Row(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 350.0),
            // Widget that displays the large image for the event.
            child: const UpcomingEventsImageLargeScreen(),
          ),
          Expanded(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Widget to display SEO optimized text for the event description.
                  SeoTextWidget(
                    text: context.appLocalizations?.upcomingEventsText ??
                        'Join our bi-weekly sessions, where we delve into latest Flutter topics and collaborate on ongoing projects.',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  // Section that holds cards for each individual event.
                  const EventCardsSection(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
