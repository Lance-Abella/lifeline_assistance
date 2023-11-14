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
        Stack(
          children: [
            Center(
              child: Container( 
                margin: EdgeInsets.only(bottom: 70, right: 8),        
                height: 213,
                width: 230,
                child: Image(
                  image: AssetImage("assets/splashlogo.png"),                  
                ),
              ),
            ),

          Center(
            child: Container(
                margin: EdgeInsets.only(top: 140),
                child: Text(
                  "LIFELINE ASSISTANCE",
                  style: TextStyle(
                    color: Color.fromRGBO(191, 27, 27, 1),
                    fontFamily: "IBM Plex Mono",
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
          ),

            Center(
              child: Container(
                margin: EdgeInsets.only(top: 180),
                child: Text(
                  "RAPID, RALIABLE, READY TO RESPOND",
                  style: TextStyle(
                    color: Color.fromRGBO(88, 83, 83, 1),
                    fontFamily: "IBM Plex Mono",
                    fontSize:10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ]
        ),
        ),
    );
  }
}

Future<void> goToLoginPage(BuildContext context) async {
  await Future.delayed(Duration(milliseconds: 1500), (){});
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
}