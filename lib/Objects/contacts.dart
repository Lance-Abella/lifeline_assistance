// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lifeline_assistance/pages/calling1.dart';

class Contact extends StatelessWidget {
  final String name;
  final String number;
  final String distance;
  final String badge;

  const Contact({super.key, required this.name, required this.number, required this.distance, required this.badge});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 50, top: 49),
          child: Text(
            number,
            style: TextStyle(
              color: Color.fromRGBO(88, 83, 83, 1),
              fontFamily: "IBM Plex Mono",
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),

        Container(
          margin: EdgeInsets.only(left: 50, top: 70),
          child: Text(
            distance,
            style: TextStyle(
              color: Color.fromRGBO(88, 83, 83, 1),
              fontFamily: "IBM Plex Mono",
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),

        Container(
          height: 28,
          width: 36,
          margin: EdgeInsets.only(left: 200, top: 60),
          child: Image(
            image: AssetImage(badge),
          ),
        ),

        GestureDetector(
        onLongPress: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Calling1())),
        child: Container(              
          height: 70,
          width: 300,
            margin: EdgeInsets.only(left: 50, top: 25),
            child: Text(
              name,
              style: TextStyle(
                color: Color.fromRGBO(88, 83, 83, 1),
                fontFamily: "IBM Plex Mono",
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
      ),

      Container(
        height: 20,
        width: 400,
        // margin: EdgeInsets.only( top: 70),
        child: Image(
          image: AssetImage("assets/homepaged3.png"),
        ),
      ),
            ],
          );
        }
      }