// Project: SFMG Homepage
// Author: Daniel Krentzlin
// Dev Environment: Android Studio
// Platform: Windows 11
// Copyright:  2024
// ID: 20240205085410
// 05/02/2024 08:54

import 'package:flutter/material.dart';

import '../../../shared/ui/seo_text_widget.dart';

/// The EventCard widget is designed to display the details of an individual event
/// in a card format. It includes information such as the date, title, location, address, and city of the event.
///
/// This widget is typically used within a list of events, where each card represents a specific event,
/// providing a clear and structured presentation of the event details.
class EventCard extends StatelessWidget {
  /// The date of the event.
  final String date;

  /// The title of the event.
  final String title;

  /// The location name where the event is taking place.
  final String location;

  /// The address of the event location.
  final String address;

  /// The city where the event is located.
  final String city;

  /// Creates an EventCard widget.
  ///
  /// This widget should be used to represent individual events in a visually
  /// appealing and information-rich card format.
  const EventCard({
    super.key,
    required this.date,
    required this.title,
    required this.location,
    required this.address,
    required this.city,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
      child: SizedBox(
        width: 300.0,
        child: Card(
          color: const Color(0xFFC5E7FF),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Widget to display SEO optimized text for the event date.
              SeoTextWidget(
                text: date,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFDD520F),
                ),
                padding: const EdgeInsets.only(left: 12.0, top: 8.0),
              ),
              ListTile(
                title: SeoTextWidget(
                  text: title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // SEO optimized text widgets for displaying the location, address, and city of the event.
                    SeoTextWidget(
                      text: location,
                      style: const TextStyle(color: Colors.black),
                    ),
                    SeoTextWidget(
                      text: address,
                      style: const TextStyle(color: Colors.black),
                    ),
                    SeoTextWidget(
                      text: city,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
