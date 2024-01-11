// Project: SFMG Homepage
// Author: Daniel Krentzlin
// Dev Environment: Android Studio
// Platform: Windows 11
// Copyright:  2024
// ID: 20240110095847
// 10.01.2024 09:58
import 'package:flutter/material.dart';
import 'package:seo_renderer/renderers/image_renderer/image_renderer_vm.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';
import 'package:sfmg_homepage/shared/extensions/build_context_extension.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    final isLargeScreen = MediaQuery.of(context).size.width >= 1445.0;

    return isLargeScreen
        ? _buildLargeScreenLayout(context)
        : _buildSmallScreenLayout(context);
  }

  Widget _buildLargeScreenLayout(BuildContext context) {
    return Row(
      children: [
        _buildImageSection(true),
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
          _buildImageSection(false),
          const SizedBox(height: 32.0),
          _buildTextSection(context, false),
        ],
      ),
    );
  }

  Widget _buildImageSection(bool isLargeScreen) {
    if (isLargeScreen) {
      return ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: (1920 - 64) / 2),
        child: Padding(
          padding: EdgeInsets.only(right: isLargeScreen ? 32.0 : 0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: ImageRenderer(
              alt: 'Strasbourg Flutter Meetup Group default image',
              child: Image.asset("/images/sfmg_header.jpg"),
            ),
          ),
        ),
      );
    }

    return Padding(
      padding: EdgeInsets.only(right: isLargeScreen ? 32.0 : 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: ImageRenderer(
          alt: 'Strasbourg Flutter Meetup Group default image',
          child: Image.asset(
            "/images/sfmg_header.jpg",
            width: double.infinity,
            height: 672.0,
            fit: BoxFit.cover,
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
            height: 32.0,
          ),
          _buildAboutUsText(context),
        ],
      ),
    );
  }

  Widget _buildTitleText(BuildContext context) {
    return TextRenderer(
      child: Text(
        context.appLocalizations?.aboutUsTitle ??
            'Where Strasbourg\'s Flutter Enthusiasts Unite.',
        style: Theme.of(context).textTheme.displayLarge,
      ),
    );
  }

  Widget _buildAboutUsText(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextRenderer(
          child: Text(
            context.appLocalizations?.aboutUsParagraphTitle ?? 'About us',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        const SizedBox(height: 32.0),
        TextRenderer(
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
