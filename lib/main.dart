// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lifeline_assistance/pages/login_page.dart';
import 'package:lifeline_assistance/pages/splash_screen.dart';
import 'package:lifeline_assistance/theme/dark_mode.dart';
import 'package:lifeline_assistance/theme/light_mode.dart';

void main() {
  runApp(const Homepage());
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
      theme: lightMode,
      darkTheme: darkMode,
    );
  }
}
