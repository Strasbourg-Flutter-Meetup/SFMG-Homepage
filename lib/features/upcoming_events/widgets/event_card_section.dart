// Project: SFMG Homepage
// Author: Daniel Krentzlin
// Dev Environment: Android Studio
// Platform: Windows 11
// Copyright:  2024
// ID: 20240205085451
// 05/02/2024 08:54
import 'package:flutter/material.dart';

import 'event_card.dart';

/// The EventCardsSection widget is a container that holds a collection of EventCard widgets.
/// It presents these cards in a horizontally scrollable list, allowing users to browse through
/// multiple events in a compact and user-friendly manner.
class EventCardsSection extends StatelessWidget {
  /// Creates an EventCardsSection widget.
  ///
  /// This widget should be used to display a horizontally scrollable list of events,
  /// each represented by an EventCard, providing a quick overview of multiple events.
  const EventCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.0,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: const [
          // Individual event cards, each representing a different event.
          EventCard(
            date: 'Tues. 13th Feb. 2024 - 06:30 PM CET',
            title: 'Custom Lints',
            location: 'La Plage Digitale',
            address: '13 Rue Jacques Peirots',
            city: 'FR-67000 Strasbourg',
          ),
          EventCard(
            date: 'Tues. 05th Mar. 2024 - 06:30 PM CET',
            title: '<unknown topic>',
            location: 'La Plage Digitale',
            address: '13 Rue Jacques Peirots',
            city: 'FR-67000 Strasbourg',
          ),
          // Additional EventCard widgets can be added here.
        ],
      ),
    );
  }
}
