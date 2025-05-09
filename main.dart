import 'package:flutter/material.dart';
import 'package:remindeasy/presentation/pages/onboarding_page1.dart';
import 'package:remindeasy/core/theme/app_theme.dart';
import 'package:remindeasy/core/theme/app_colors.dart';
import 'package:remindeasy/presentation/pages/onboarding_page2.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightThemeMode,
      home: OnboardingPage1(),
    );
  }
}
