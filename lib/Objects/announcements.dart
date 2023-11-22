// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Announcements extends StatelessWidget {
  final String profile;
  final String name;
  final String message;

  const Announcements({super.key, required this.profile, required this.name, required this.message});

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
          margin: EdgeInsets.only(left:70, top: 20),
          child: Text(
            name,
            style: TextStyle(
              color: Color.fromRGBO(88, 83, 83, 1),
              fontFamily: "IBM Plex Mono",
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),

        Container(                  
          margin: EdgeInsets.only(left:71, top: 38),
          child: Text(
            "1w",
            style: TextStyle(
              color: Color.fromRGBO(88, 83, 83, 1),
              fontFamily: "IBM Plex Mono",
              fontSize: 11,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),

        Container(                  
          margin: EdgeInsets.only(left: 71, top: 62),
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
          height: 20,
          width: 400,

          margin: EdgeInsets.only(bottom: 90),
          child: Image(
            image: AssetImage("assets/homepaged3.png"),
          ),
        ),            
      ],
    );
  }
}