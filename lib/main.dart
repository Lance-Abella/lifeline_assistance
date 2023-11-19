// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lifeline_assistance/pages/splash_screen.dart';
import 'package:lifeline_assistance/theme/dark_mode.dart';
import 'package:lifeline_assistance/theme/light_mode.dart';
import 'package:firebase_core/firebase_core.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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


