// Project: SFMG Homepage
// Author: Daniel Krentzlin
// Dev Environment: Android Studio
// Platform: Windows 11
// Copyright:  2024
// ID: 20240110152028
// 10.01.2024 15:20
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seo/seo.dart';
import 'package:sfmg_homepage/shared/extensions/build_context_extension.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildTitle(context,
            context.appLocalizations?.socialMediaTitle ?? 'Social Media'),
        const SizedBox(height: 24.0),
        Center(
          child: Wrap(
            children: [
              Seo.link(
                anchor: 'meetup',
                href: 'https://www.meetup.com/strasbourg-flutter-meetup-group/',
                child: _buildSocialMediaCard(
                  context,
                  title: context.appLocalizations?.socialMediaMeetupTitle ??
                      "meetup",
                  text: context.appLocalizations?.socialMediaMeetupText ??
                      "Interested in joining our vibrant Flutter community? Click on 'Meetup' to sign up and be part of the Strasbourg Flutter Meetup Group.",
                  imageUrl: 'assets/logos/meetup.svg',
                  url:
                      'https://www.meetup.com/strasbourg-flutter-meetup-group/',
                ),
              ),
              const SizedBox(
                width: 48.0,
              ),
              Seo.link(
                anchor: 'Github',
                href: 'https://github.com/Strasbourg-Flutter-Meetup',
                child: _buildSocialMediaCard(
                  context,
                  title: context.appLocalizations?.socialMediaGithubTitle ??
                      "Github",
                  text: context.appLocalizations?.socialMediaGithubText ??
                      "Explore our world of code on GitHub! Click 'Go to GitHub' to access a wealth of resources from the Strasbourg Flutter Meetup Group.",
                  imageUrl: 'assets/logos/github.svg',
                  url: 'https://github.com/Strasbourg-Flutter-Meetup',
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24.0),
      ],
    );
  }

  Widget _buildTitle(BuildContext context, String text) {
    return Seo.text(
      text: text,
      style: TextTagStyle.h5,
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }

  Widget _buildSocialMediaCard(
    BuildContext context, {
    required String title,
    required String text,
    required String imageUrl,
    required String url,
  }) {
    return ConstrainedBox(
      constraints:
          const BoxConstraints(maxWidth: (1920 - 64) * 0.33, minHeight: 350.0),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 12.0),
        decoration: BoxDecoration(
          color: const Color(0xFFC5E7FF),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildCardContent(context, title: title, text: text),
              _buildImageLink(imageUrl: imageUrl, url: url),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCardContent(BuildContext context,
      {required String title, required String text}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Seo.text(
          style: TextTagStyle.h5,
          text:  title,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
              fontFamily: Theme.of(context).textTheme.titleLarge?.fontFamily,
              fontWeight: Theme.of(context).textTheme.titleLarge?.fontWeight,
              fontStyle: Theme.of(context).textTheme.titleLarge?.fontStyle,
            ),
          ),
        ),
        const SizedBox(height: 24.0),
        Seo.text(
          text: text,
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
              fontFamily: Theme.of(context).textTheme.bodyLarge?.fontFamily,
              fontWeight: Theme.of(context).textTheme.bodyLarge?.fontWeight,
              fontStyle: Theme.of(context).textTheme.bodyLarge?.fontStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildImageLink({required String imageUrl, required String url}) {
    return Center(
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () => _launchUrl(url),
          child: Seo.image(
            alt: "Social Media Icons",
            src: imageUrl,
            child: SvgPicture.asset(
              imageUrl,
              height: 36.0,
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }
}
