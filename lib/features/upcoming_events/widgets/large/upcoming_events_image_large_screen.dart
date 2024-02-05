// Project: SFMG Homepage
// Author: Daniel Krentzlin
// Dev Environment: Android Studio
// Platform: Windows 11
// Copyright:  2024
// ID: 20240205085603
// 05/02/2024 08:56
import 'package:flutter/material.dart';
import 'package:seo/seo.dart';

/// The UpcomingEventsImageLargeScreen widget is designed to display an image
/// specifically for the large screen layout of the Upcoming Events section.
///
/// This widget encapsulates the functionality for displaying an image with SEO considerations,
/// ensuring the image is properly indexed by search engines and displayed with the correct constraints.
class UpcomingEventsImageLargeScreen extends StatelessWidget {
  /// Creates an UpcomingEventsImageLargeScreen widget.
  ///
  /// This widget should be used when you want to display an event-related image
  /// in a large screen environment, ensuring it adheres to SEO standards and is properly constrained.
  const UpcomingEventsImageLargeScreen({super.key});

  @override
  Widget build(BuildContext context) => ConstrainedBox(
    constraints: const BoxConstraints(maxWidth: 350.0),
    child: Padding(
      padding: const EdgeInsets.only(right: 32.0),
      // SEO optimized image widget, ensuring the image has the correct alt text for SEO purposes.
      child: Seo.image(
        alt: 'La Plage Digitale - Strasbourg',
        src: 'https://flutter-sxb.dev/assets/assets/images/la_plage_digitale.jpg',
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          // The actual image being displayed.
          child: Image.asset(
            'assets/images/la_plage_digitale.jpg',
          ),
        ),
      ),
    ),
  );
}
