// Project: SFMG Homepage
// Author: Daniel Krentzlin
// Dev Environment: Android Studio
// Platform: Windows 11
// Copyright:  2024
// ID: 20240205085119
// 05/02/2024 08:51
import 'package:flutter/material.dart';
import 'package:sfmg_homepage/features/upcoming_events/widgets/small_medium/small_medium_upcoming_events_image_screen.dart';

import '../../../../shared/extensions/build_context_extension.dart';

/// The SmallMediumUpcomingEventsImageSection widget is designed to structure the image section
/// for small and medium screen layouts within the context of an Upcoming Events section.
///
/// This widget handles the presentation of the event image and manages spacing
/// based on the screen size, ensuring a visually appealing and functionally appropriate layout.
class SmallMediumUpcomingEventsImageSection extends StatelessWidget {
  /// The screen size class determines how the content within the image section is structured and laid out.
  /// It differentiates between small and medium screens, adjusting the layout and spacing accordingly.
  final ScreenSizeClass screenSizeClass;

  /// Creates a SmallMediumUpcomingEventsImageSection widget.
  ///
  /// This widget should be used in the context of an Upcoming Events section
  /// where the screen size is either small or medium. It ensures the image section
  /// is presented in an optimized and aesthetically pleasing manner for smaller screens.
  const SmallMediumUpcomingEventsImageSection(
      {super.key, required this.screenSizeClass});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Widget that displays the event image, optimized for small and medium screens.
        SmallMediumUpcomingEventsImageScreen(
          screenSizeClass: screenSizeClass,
        ),
        // Additional spacing is added for small screens to separate the image from subsequent content.
        if (screenSizeClass == ScreenSizeClass.smallScreen)
          const SizedBox(height: 12.0),
      ],
    );
  }
}
