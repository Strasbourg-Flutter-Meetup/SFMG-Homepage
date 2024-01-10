// Project: SFMG Homepage
// Author: Daniel Krentzlin
// Dev Environment: Android Studio
// Platform: Windows 11
// Copyright:  2024
// ID: 20240110095235
// 10.01.2024 09:52
import 'package:flutter/material.dart';
import 'package:sfmg_homepage/features/about_us/presentation/widgets/about_us.dart';
import 'package:sfmg_homepage/shared/ui/appbar/appbar_template.dart';
import 'package:sfmg_homepage/shared/ui/screen_template.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) => const ScreenTemplate(
      appBarTemplate: AppBarTemplate(
        isHomepage: true,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          children: [
            AboutUs(),
            SizedBox(
              height: 64.0,
            ),
            Text('asdfasldfa'),
          ],
        ),
      ));
}
