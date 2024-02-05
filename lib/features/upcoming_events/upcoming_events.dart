import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sfmg_homepage/shared/extensions/build_context_extension.dart';

import 'widgets/large/large_screen_content.dart';
import 'widgets/small_medium/small_medium_screen_content.dart';

/// The UpcomingEvents widget is the main widget for displaying the upcoming events section
/// within an application. It adapts its layout and content based on the screen size, ensuring
/// a responsive and user-friendly presentation of the upcoming events.
class UpcomingEvents extends StatelessWidget {
  /// Creates an UpcomingEvents widget.
  ///
  /// This widget should be used as a top-level container for the upcoming events section
  /// of a webpage or application. It dynamically switches between two different content
  /// layouts based on the screen size.
  const UpcomingEvents({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieve the screen size class from the context to determine the layout.
    final screenSizeClass = context.getScreenSizeClass();

    return Stack(
      children: [
        // Positioned background image that stays at the bottom left of the stack.
        Positioned(
          bottom: 0.0,
          left: 0.0,
          child: Container(
            constraints: const BoxConstraints(maxHeight: 200.0),
            child: SvgPicture.asset(
              'assets/waves/upcoming_events_wave.svg',
              width: screenSizeClass == ScreenSizeClass.largeScreen
                  ? 1920.0
                  : null,
              fit: screenSizeClass == ScreenSizeClass.largeScreen
                  ? BoxFit.fitWidth
                  : BoxFit.none, // Add this line to fit the image to the width
            ),
          ),
        ),

        // Conditional content rendering based on the screen size.
        // For large screens, LargeScreenContent is rendered; otherwise, SmallMediumScreenContent is rendered.
        screenSizeClass != ScreenSizeClass.largeScreen
            ? SmallMediumScreenContent(screenSizeClass: screenSizeClass)
            : const LargeScreenContent(),
      ],
    );
  }
}
