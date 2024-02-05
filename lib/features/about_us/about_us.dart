// Project: SFMG Homepage
// Author: Daniel Krentzlin
// Dev Environment: Android Studio
// Platform: Windows 11
// Copyright:  2024
// ID: 20240110095847
// 10.01.2024 09:58
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seo/seo.dart';
import 'package:sfmg_homepage/shared/extensions/build_context_extension.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    final isLargeScreen = MediaQuery.of(context).size.width >= 1500.0;

    return isLargeScreen
        ? _buildLargeScreenLayout(context)
        : _buildSmallScreenLayout(context);
  }

  Widget _buildLargeScreenLayout(BuildContext context) {
    return Row(
      children: [
        _buildImageSection(
          true,
          context,
        ),
        Expanded(flex: 1, child: _buildTextSection(context, true)),
      ],
    );
  }

  Widget _buildSmallScreenLayout(BuildContext context) {
    return SizedBox(
      width: 1920 - 64,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildImageSection(false, context),
          const SizedBox(height: 128.0),
          _buildTextSection(context, false),
        ],
      ),
    );
  }

  Widget _buildImageSection(bool isLargeScreen, BuildContext context) {
    if (isLargeScreen) {
      return ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: (1920 - 64) / 2),
        child: Padding(
          padding: EdgeInsets.only(right: isLargeScreen ? 32.0 : 0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Stack(
              children: [
                Seo.image(
                  src: 'assets/images/sfmg_header.jpg',
                  alt: 'Strasbourg Flutter Meetup Group default image',
                  child: Image.asset("assets/images/sfmg_header.jpg"),
                ),
                Positioned(
                  right: 12.0,
                  bottom: 12.0,
                  child: Container(
                    padding: const EdgeInsets.all(24.0),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/logos/flutter.svg'),
                        const SizedBox(
                          width: 24.0,
                        ),
                        Seo.text(
                          style: TextTagStyle.h5,
                          text: context.appLocalizations?.aboutUsSFMG ??
                              'Strasbourg Flutter\nMeetup Group',
                          child: Text(
                            context.appLocalizations?.aboutUsSFMG ??
                                'Strasbourg Flutter\nMeetup Group',
                            style: TextStyle(
                              color: Color(0xFF111212),
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.fontSize,
                              fontFamily: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.fontFamily,
                              fontWeight: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.fontWeight,
                              fontStyle: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.fontStyle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Padding(
      padding: EdgeInsets.only(right: isLargeScreen ? 32.0 : 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Seo.image(
          alt: 'Strasbourg Flutter Meetup Group default image',
          src: 'assets/images/sfmg_header.jpg',
          child: Stack(
            children: [
              Image.asset(
                "assets/images/sfmg_header.jpg",
                width: double.infinity,
                height: 672.0,
                fit: BoxFit.cover,
              ),
              Positioned(
                right: 12.0,
                bottom: 12.0,
                child: Container(
                  padding: const EdgeInsets.all(24.0),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/logos/flutter.svg'),
                      const SizedBox(
                        width: 24.0,
                      ),
                      Seo.head(
                        tags: [
                          MetaTag(
                              name: 'title',
                              content: context.appLocalizations?.aboutUsSFMG ??
                                  'Strasbourg Flutter\nMeetup Group'),
                        ],
                        child: Text(
                          context.appLocalizations?.aboutUsSFMG ??
                              'Strasbourg Flutter\nMeetup Group',
                          style: TextStyle(
                            color: Color(0xFF111212),
                            fontSize: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.fontSize,
                            fontFamily: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.fontFamily,
                            fontWeight: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.fontWeight,
                            fontStyle: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.fontStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextSection(BuildContext context, bool isLargeScreen) {
    if (isLargeScreen) {
      return ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: (1920 - 64) / 2,
          minWidth: 300.0,
          maxHeight: 672.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildTitleText(context),
            _buildAboutUsText(context),
          ],
        ),
      );
    }

    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: (1920 - 64) / 2,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildTitleText(context),
          const SizedBox(
            height: 128.0,
          ),
          _buildAboutUsText(context),
        ],
      ),
    );
  }

  Widget _buildTitleText(BuildContext context) {
    return Seo.text(
      style: TextTagStyle.h1,
      text: context.appLocalizations?.aboutUsTitle ??
          'Where Strasbourg\'s Flutter Enthusiasts Unite.',
      child: Text(
        context.appLocalizations?.aboutUsTitle ??
            'Where Strasbourg\'s Flutter Enthusiasts Unite.',
        style: TextStyle(
          color: const Color(0xFF095d9e),
          fontSize: Theme.of(context).textTheme.displayLarge?.fontSize,
          fontFamily: Theme.of(context).textTheme.displayLarge?.fontFamily,
          fontWeight: Theme.of(context).textTheme.displayLarge?.fontWeight,
          fontStyle: Theme.of(context).textTheme.displayLarge?.fontStyle,
        ),
      ),
    );
  }

  Widget _buildAboutUsText(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Seo.text(
          style: TextTagStyle.h5,
          text: context.appLocalizations?.aboutUsParagraphTitle ?? 'About us',
          child: Text(
            context.appLocalizations?.aboutUsParagraphTitle ?? 'About us',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        const SizedBox(height: 32.0),
        Seo.text(
          text: context.appLocalizations?.aboutUsParagraph ??
              'The Strasbourg Flutter Meetup Group is a vibrant community of Flutter enthusiasts based in and around Strasbourg.',
          child: Text(
            context.appLocalizations?.aboutUsParagraph ??
                'The Strasbourg Flutter Meetup Group is a vibrant community of Flutter enthusiasts based in and around Strasbourg.',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}
