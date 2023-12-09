// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Notifs extends StatelessWidget {
  final String image;
  final String title;
  final String message;
  final String duration;

  const Notifs({super.key, required this.image, required this.title, required this.message, required this.duration});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Container(
          height: 20,
          width: 400,
          // margin: EdgeInsets.only(top: ),
          child: Image(
            image: AssetImage("assets/homepaged3.png"),
          ),
        ),
        
        Container(
          height: 55,
          width: 55, 
          margin: EdgeInsets.only(left: 20, top: 20),                       
          child: Image(
            image: AssetImage(image),
          ),
        ),
      
        Container(                  
          margin: EdgeInsets.only(left:90, top: 25),
          child: Text(
            title,
            style: TextStyle(
              color: Color.fromRGBO(88, 83, 83, 1),
              fontFamily: "IBM Plex Mono",
              fontSize: 15,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      
        Container(                  
          margin: EdgeInsets.only(left: 90, top: 55),
          child: Text(
            message,
            style: TextStyle(
              color: Color.fromRGBO(88, 83, 83, 1),
              fontFamily: "IBM Plex Mono",
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      
        Container(                  
          margin: EdgeInsets.only(left:90, top: 110),
          child: Text(
            duration,
            style: TextStyle(
              color: Color.fromRGBO(88, 83, 83, 0.58),
              fontFamily: "IBM Plex Mono",
              fontSize: 11,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}