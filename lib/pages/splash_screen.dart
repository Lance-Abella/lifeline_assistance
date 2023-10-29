// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_web_libraries_in_flutter, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:lifeline_assistance/pages/login_page.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    goToLoginPage(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: 
        Container(          
          height: 219,
          width: 298,
          child: Image(
            image: AssetImage("assets/splash logo.png"),
            fit: BoxFit.cover,
          ),
        ),
        ),
    );
  }
}

Future<void> goToLoginPage(BuildContext context) async {
  await Future.delayed(Duration(milliseconds: 1500), (){});
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
}