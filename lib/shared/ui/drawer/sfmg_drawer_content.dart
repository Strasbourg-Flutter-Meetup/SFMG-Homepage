// Project: Medical Device Classifier
// Author: Daniel Krentzlin
// Dev Environment: Android Studio
// Platform: Windows 11
// Copyright:  2023
// ID: 20231110191054
// 10.11.2023 19:10
import 'package:flutter/material.dart';
import 'package:sfmg_homepage/shared/extensions/build_context_extension.dart';
import 'package:sfmg_homepage/shared/ui/screen_template.dart';

/// A Flutter widget representing the content of a Material Design (MDC) drawer.
///
/// The [MDCDrawerContent] widget is used to create the content section of an
/// MDC drawer, which typically contains a list of navigation items. It provides
/// a convenient way to create this content with predefined styling and structure.
class MDCDrawerContent extends StatelessWidget {
  /// Creates an instance of [MDCDrawerContent].
  ///
  /// The [key] parameter is optional and can be used to provide a [Key] to
  /// the widget.
  const MDCDrawerContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          height: 24.0,
        ),
        ListTile(
          title: Text(
            context.appLocalizations?.appBarAboutUs ?? 'About us',
          ),
          onTap: () {
            controller.scrollToIndex(1);
            Navigator.of(context).pop();
          },
        ),
        const SizedBox(
          height: 12.0,
        ),
        ListTile(
          title: Text(
            context.appLocalizations?.appbarSocialMedia ?? 'Social Media',
          ),
          onTap: () {
            controller.scrollToIndex(2);
            Navigator.of(context).pop();
          },
        ),
        const SizedBox(
          height: 12.0,
        ),
      ],
    );
  }
}
