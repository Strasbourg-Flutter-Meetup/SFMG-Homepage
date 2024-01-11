// Project: SFMG Homepage
// Author: Daniel Krentzlin
// Dev Environment: Android Studio
// Platform: Windows 11
// Copyright:  2024
// ID: 20240110152028
// 10.01.2024 15:20
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';
import 'package:sfmg_homepage/shared/extensions/build_context_extension.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextRenderer(
            child: Text(
              context.appLocalizations?.socialMediaTitle ?? 'Social Media',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const SizedBox(height: 24.0),
          Center(
            child: Wrap(
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: (1920 - 64) * 0.33,
                    minHeight: 350.0,
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 12.0),
                    decoration: BoxDecoration(
                        color: Color(0xFFC5E7FF),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextRenderer(
                                child: Text(
                                  context.appLocalizations
                                          ?.socialMediaMeetupTitle ??
                                      "meetup",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.fontSize,
                                    fontFamily: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.fontFamily,
                                    fontWeight: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.fontWeight,
                                    fontStyle: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.fontStyle,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 24.0,
                              ),
                              TextRenderer(
                                child: Text(
                                  context.appLocalizations
                                          ?.socialMediaMeetupText ??
                                      "Interested in joining our vibrant Flutter community? Click on 'Meetup' to sign up and be part of the Strasbourg Flutter Meetup Group.",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.fontSize,
                                    fontFamily: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.fontFamily,
                                    fontWeight: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.fontWeight,
                                    fontStyle: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.fontStyle,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Center(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                  onTap: () {
                                    _launchUrl(
                                      'https://www.meetup.com/strasbourg-flutter-meetup-group/',
                                    );
                                  },
                                  child: SvgPicture.asset('logos/meetup.svg')),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(
                      maxWidth: (1920 - 64) * 0.33, minHeight: 350.0),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 24.0,
                      vertical: 12.0,
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xFFC5E7FF),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextRenderer(
                                child: Text(
                                  context.appLocalizations
                                          ?.socialMediaGithubTitle ??
                                      "Github",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.fontSize,
                                    fontFamily: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.fontFamily,
                                    fontWeight: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.fontWeight,
                                    fontStyle: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.fontStyle,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 24.0,
                              ),
                              TextRenderer(
                                child: Text(
                                  context.appLocalizations
                                          ?.socialMediaGithubText ??
                                      "Explore our world of code on GitHub! Click 'Go to GitHub' to access a wealth of resources from the Strasbourg Flutter Meetup Group.",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.fontSize,
                                    fontFamily: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.fontFamily,
                                    fontWeight: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.fontWeight,
                                    fontStyle: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.fontStyle,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Center(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                  onTap: () {
                                    _launchUrl(
                                      'https://github.com/Strasbourg-Flutter-Meetup',
                                    );
                                  },
                                  child: SvgPicture.asset('logos/github.svg')),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24.0),
        ],
      );

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }
}
