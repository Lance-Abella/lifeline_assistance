// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: 
        Container(          
          height: 55,
          child: Image(
            image: AssetImage("assets/splash logo.png"),
            fit: BoxFit.cover,
          ),
        ),
        ),
    );
  }
}