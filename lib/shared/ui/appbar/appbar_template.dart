// Project: SFMG Homepage
// Author: Daniel Krentzlin
// Dev Environment: Android Studio
// Platform: Windows 11
// Copyright:  2024
// ID: 20240110092637
// 10.01.2024 09:26

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:seo/seo.dart';
import 'package:sfmg_homepage/shared/extensions/build_context_extension.dart';
import 'package:sfmg_homepage/shared/ui/screen_template.dart';

/// The [AppBarTemplate] widget is a Flutter [StatelessWidget] that represents
/// the custom AppBar used throughout the application. It provides the
/// application's title and an optional back button or navigation icon.
class AppBarTemplate extends StatelessWidget implements PreferredSizeWidget {
  /// Constructor for the [AppBarTemplate] widget.
  ///
  /// [isHomepage] is an optional parameter that indicates whether this
  /// AppBar is being used in the dashboard view. If true, it displays an
  /// account tree icon; otherwise, it shows a back button (on mobile).
  ///
  /// [key] is an optional parameter that can be used to provide a key for
  /// this widget.
  const AppBarTemplate({
    super.key,
    this.isHomepage = false,
  });

  /// Indicates whether this AppBar is being used in the dashboard view.
  final bool isHomepage;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: double.infinity,
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final screenSizeClass = context.getScreenSizeClass();

            return AppBar(
              actions: [
                if (screenSizeClass != ScreenSizeClass.smallScreen)
                  TextButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateColor.resolveWith(
                        (states) => Colors.transparent,
                      ),
                      splashFactory: NoSplash.splashFactory,
                    ),
                    //onPressed: routeToAboutUs,
                    onPressed: () {
                      controller.scrollToIndex(1,
                          preferPosition: AutoScrollPosition.begin);
                    },
                    child: Seo.text(
                      style: TextTagStyle.h6,
                      text:
                          context.appLocalizations?.appBarAboutUs ?? 'About us',
                      child: Text(
                        context.appLocalizations?.appBarAboutUs ?? 'About us',
                      ),
                    ),
                  ),
                if (screenSizeClass != ScreenSizeClass.smallScreen)
                  TextButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateColor.resolveWith(
                        (states) => Colors.transparent,
                      ),
                      splashFactory: NoSplash.splashFactory,
                    ),
                    //onPressed: routeToAboutUs,
                    onPressed: () {
                      controller.scrollToIndex(2,
                          preferPosition: AutoScrollPosition.begin);
                    },
                    child: Seo.text(
                      style: TextTagStyle.h6,
                      text: context.appLocalizations?.appbarEvents ??
                          'Events',
                      child: Text(
                        context.appLocalizations?.appbarEvents ??
                            'Events',
                      ),
                    ),
                  ),
                // if (screenSizeClass != ScreenSizeClass.smallScreen)
                //   TextButton(
                //     style: ButtonStyle(
                //       overlayColor: MaterialStateColor.resolveWith(
                //         (states) => Colors.transparent,
                //       ),
                //       splashFactory: NoSplash.splashFactory,
                //     ),
                //     //onPressed: routeToAboutUs,
                //     onPressed: () {},
                //     child: TextRenderer(
                //       child: Text(
                //         context.appLocalizations?.appbarProjects ?? 'Projects',
                //       ),
                //     ),
                //   ),
                if (screenSizeClass != ScreenSizeClass.smallScreen)
                  TextButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateColor.resolveWith(
                        (states) => Colors.transparent,
                      ),
                      splashFactory: NoSplash.splashFactory,
                    ),
                    //onPressed: routeToAboutUs,
                    onPressed: () {
                      controller.scrollToIndex(5,
                          preferPosition: AutoScrollPosition.begin);
                    },
                    child: Seo.text(
                      style: TextTagStyle.h6,
                      text: context.appLocalizations?.appbarSocialMedia ??
                          'Social Media',
                      child: Text(
                        context.appLocalizations?.appbarSocialMedia ??
                            'Social Media',
                      ),
                    ),
                  ),
                if (screenSizeClass == ScreenSizeClass.smallScreen)
                  IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(
                      Icons.menu,
                    ),
                  ),
              ],
              // Display either a back button (on mobile) or an account tree icon.
              leading: !isHomepage
                  ? const BackButton()
                  : Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: SvgPicture.asset('assets/logos/stork.svg',
                          colorFilter: const ColorFilter.mode(
                              Color(0xFF095d9e), BlendMode.srcIn),
                          semanticsLabel: 'A stork logo.'),
                    ),

              // The title of the AppBar, retrieved from the app's localizations or
              // providing a default title if not found.
              title: screenSizeClass == ScreenSizeClass.smallScreen
                  ? Seo.text(
                      style: TextTagStyle.h2,
                      text:
                          context.appLocalizations?.appBarTitleShort ?? 'SFMG',
                      child: AutoSizeText(
                        context.appLocalizations?.appBarTitleShort ?? 'SFMG',
                        minFontSize: 10.0,
                        maxFontSize: 24.0,
                        maxLines: 1,
                        overflow: TextOverflow.visible,
                      ),
                    )
                  : Seo.text(
                      style: TextTagStyle.h2,
                      text: context.appLocalizations?.appBarTitleLong ??
                          'Strasbourg Flutter MeetupGroup',
                      child: AutoSizeText(
                        context.appLocalizations?.appBarTitleLong ??
                            'Strasbourg Flutter MeetupGroup',
                        minFontSize: 10.0,
                        maxFontSize: 24.0,
                        maxLines: 1,
                        overflow: TextOverflow.visible,
                      ),
                    ),
            );
          },
        ),
      ),
    );
  }
}
