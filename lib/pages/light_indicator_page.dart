// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lifeline_assistance/pages/call_page.dart';

class LightIndicator extends StatelessWidget {
  const LightIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(        
        child: Stack(
          children: [
            Container(
              height: 900,
              width: 400,
              margin: EdgeInsets.only(right: 7, bottom: 500),
              child: Image(
                image: AssetImage("assets/homepaged2.png"),
              ),
            ),

            Container(
                margin: EdgeInsets.only(left: 53, top: 180),
                child: Text(
                  "Emergency Responders",
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: "IBM Plex Mono",
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),

            Container(
              margin: EdgeInsets.only(left: 122, top: 210),
              child: Text(
                "40 meters away",
                style: TextStyle(
                  color: Color.fromRGBO(216, 216, 216, 1),
                  fontFamily: "IBM Plex Mono",
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 90, top: 240),
              child: Text(
                "Kindly stay calm and silent. Responders are on their way",
                style: TextStyle(
                  color: Color.fromRGBO(216, 216, 216, 1),
                  fontFamily: "IBM Plex Mono",
                  fontSize: 17,
                  fontWeight: FontWeight.w200,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),

            Stack(
              children: [
                Container(
                  height: 800,
                  width: 300,
                  margin: EdgeInsets.only(left: 33, top: 100),
                  child: Image(
                    image: AssetImage("assets/map.png"),
                  ),
                ),

                Container(
                  height: 26,
                  width: 26,
                  margin: EdgeInsets.only(left: 150, top: 470),
                  child: Image(
                    image: AssetImage("assets/light.png"),
                  ),
                ),
                ]
            ),

            Container(
              height: 50,
              width: 250,
              margin: EdgeInsets.only(left: 43, top: 550),
              child: Image(
                image: AssetImage("assets/progress.png"),
              ),
            ),

            Container(
              height: 17,
              width: 24,
              margin: EdgeInsets.only(left: 297, top: 565),
              child: Image(
                image: AssetImage("assets/19%.png"),
              ),
            ),

            

            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>CallPage())),
              child: Container(
                height: 120,
                width: 120,
                margin: EdgeInsets.only(left: 123, top: 600),
                child: Image(
                  image: AssetImage("assets/endcall.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}