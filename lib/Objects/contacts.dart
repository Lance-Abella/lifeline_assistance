// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lifeline_assistance/pages/calling.dart';

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
              fontSize: 14,
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
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),

        Container(
          height: 28,
          width: 36,
          margin: EdgeInsets.only(left: 190, top: 65),
          child: Image(
            image: AssetImage(badge),
          ),
        ),

        GestureDetector(
        onLongPress: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Calling(name: name))),
        child: Container(              
          height: 70,
          width: 300,
            margin: EdgeInsets.only(left: 50, top: 25),
            child: Text(
              name,
              style: TextStyle(
                color: Color.fromRGBO(88, 83, 83, 1),
                fontFamily: "IBM Plex Mono",
                fontSize: 15,
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