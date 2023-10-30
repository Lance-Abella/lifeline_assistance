// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, use_key_in_widget_constructors, must_be_immutable, library_private_types_in_public_api

import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:lifeline_assistance/pages/home_page.dart";
import "package:lifeline_assistance/pages/registration_page.dart";

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: 800,
        width: 400,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(left: 135),
              child: Image(
                image: AssetImage("assets/logind1.png"),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 22, top: 180),
              child: Image(
                image: AssetImage("assets/logind2.png"),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 140, top: 220),
              child: Text(
                "LOG IN",
                style: TextStyle(
                  color: Color.fromRGBO(88, 83, 83, 1),
                  fontFamily: "IBM Plex Mono",
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 40, top: 310),
              child: Text(
                "Contact Number:",
                style: TextStyle(
                  color: Color.fromRGBO(88, 83, 83, 1),
                  fontFamily: "IBM Plex Mono",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            Container(
              height: 41,
              width: 280,
              margin: EdgeInsets.only(left: 40, top: 340),
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ],
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  filled: true,
                  fillColor: Color.fromRGBO(226, 225, 225, 1),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 40, top: 400),
              child: Text(
                "Password:",
                style: TextStyle(
                  color: Color.fromRGBO(88, 83, 83, 1),
                  fontFamily: "IBM Plex Mono",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            Container(
              height: 41,
              width: 280,
              margin: EdgeInsets.only(left: 40, top: 430),
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                ),
                obscureText: _obscureText,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                    ),
                    color: Colors.black,
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  filled: true,
                  fillColor: Color.fromRGBO(226, 225, 225, 1),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 190, top: 480),
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  color: Color.fromRGBO(88, 83, 83, 1),
                  fontFamily: "IBM Plex Mono",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Homepage())),
              child: Container(
                margin: EdgeInsets.only(left: 115, top: 525),
                width: 117,
                height: 38,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(191, 27, 27, 1),
                  borderRadius: BorderRadius.circular(10), 
                ),
                child: Center(
                  child: Text(
                    "login",
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: "IBM Plex Mono",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 93, top: 600),
              child: Text(
                "Don't have an account?",
                style: TextStyle(
                  color: Color.fromRGBO(88, 83, 83, 1),
                  fontFamily: "IBM Plex Mono",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>RegistrationPage())),
              child: Container(
                margin: EdgeInsets.only(left: 115, top: 625),
                child: Text(
                  "Create an account",
                  style: TextStyle(
                    color: Color.fromRGBO(88, 83, 83, 1),
                    fontFamily: "IBM Plex Mono",
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 580),              
              child: Image(
                image: AssetImage("assets/logind3.png"),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
