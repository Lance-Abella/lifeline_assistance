// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lifeline_assistance/pages/call_page.dart';

class Calling extends StatelessWidget {
  final String name;

  const Calling({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(        
        child: Stack(
          children: [
            Center(
              child: Container(
                height: 900,
                width: 400,
                margin: EdgeInsets.only(bottom: 500),
                child: Image(
                  image: AssetImage("assets/homepaged2.png"),
                ),
              ),
            ),

            Center(
              child: Container(
                  margin: EdgeInsets.only(bottom: 250),
                  child: Text(
                    name,
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: "IBM Plex Mono",
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
            ),

            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 180),
                child: Text(
                  "Calling...",
                  style: TextStyle(
                    color: Color.fromRGBO(216, 216, 216, 1),
                    fontFamily: "IBM Plex Mono",
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

            Container(
              height: 59,
              width: 48,
              margin: EdgeInsets.only(left: 50, top: 500.9),
              child: Image(
                image: AssetImage("assets/keypad.png"),
                fit: BoxFit.cover,
              ),
            ),

            Center(
              child: Container(
                height: 60,
                width: 50,
                margin: EdgeInsets.only(top: 300),
                child: Image(
                  image: AssetImage("assets/mute.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Container(
              height: 60,
              width: 51,
              margin: EdgeInsets.only(left: 260, top: 496.8),
              child: Image(
                image: AssetImage("assets/speaker.png"),
                fit: BoxFit.cover,
              ),
            ),

            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>CallPage())),
              child: Center(
                child: Container(
                  height: 120,
                  width: 120,
                  margin: EdgeInsets.only(top: 550),
                  child: Image(
                    image: AssetImage("assets/endcall.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}