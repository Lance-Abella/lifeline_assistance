// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Forum extends StatelessWidget {
  final String profile;
  final String duration;
  final String message;
  final String reacts;

  const Forum({super.key, required this.profile, required this.duration, required this.message, required this.reacts}); 

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Container(
          height: 53,
          width: 59,
          margin: EdgeInsets.only(top: 15),
          child: Image(
            image: AssetImage(profile),
          ),
        ),

        Container(                  
          margin: EdgeInsets.only(left:71, top: 25),
          child: Text(
            "Anonymous",
            style: TextStyle(
              color: Color.fromRGBO(88, 83, 83, 1),
              fontFamily: "IBM Plex Mono",
              fontSize: 15,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),

        Container(                  
          margin: EdgeInsets.only(left:71, top: 45),
          child: Text(
            duration,
            style: TextStyle(
              color: Color.fromRGBO(88, 83, 83, 1),
              fontFamily: "IBM Plex Mono",
              fontSize: 11,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),

        Container(                  
          margin: EdgeInsets.only(left: 70, top: 72),
          child: Text(
            message,
            style: TextStyle(
              color: Color.fromRGBO(88, 83, 83, 1),
              fontFamily: "IBM Plex Mono",
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),

        Container(
          height: 26,
          width: 26,
          margin: EdgeInsets.only(left: 63, top: 152),
          child: Image(
            image: AssetImage("assets/upvote.png"),
            fit: BoxFit.fill,
          ),
        ),

        Container(                  
          margin: EdgeInsets.only(left: 95, top: 155),
          child: Text(
            reacts,
            style: TextStyle(
              color: Color.fromRGBO(191, 27, 27, 1),
              fontFamily: "IBM Plex Mono",
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),

        Container(
          height: 6,
          width: 26,
          margin: EdgeInsets.only(left: 250, top: 162),
          child: Image(
            image: AssetImage("assets/red-3dots.png"),
          ),
        ),

        Container(
          height: 20,
          width: 400, 
          // margin: EdgeInsets.only(top: 10),                        
          child: Image(
            image: AssetImage("assets/homepaged3.png"),
          ),
        ),
        
      ],
    );
  }
}