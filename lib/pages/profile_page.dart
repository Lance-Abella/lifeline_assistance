// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:lifeline_assistance/Objects/dialog.dart';
import 'package:lifeline_assistance/pages/bulletin_page.dart';
import 'package:lifeline_assistance/pages/call_page.dart';
import 'package:lifeline_assistance/pages/home_page.dart';
import 'package:lifeline_assistance/pages/light_indicator_page.dart';
import 'package:lifeline_assistance/pages/settings_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
         onHorizontalDragEnd: (details) {
          if (details.primaryVelocity! > 0) {            
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => SettingsPage()));
          }  
        },
        child: Container(
          color: Colors.white,
          child: Stack(
            children: [            
              Container(
                height: 1000,
                width: 501,
                margin: EdgeInsets.only(bottom: 480),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/homepaged1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
      
              Container(
                height: 900,
                width: 400,
                margin: EdgeInsets.only(bottom: 580),
                child: Image(
                  image: AssetImage("assets/homepaged2.png"),
                ),
              ),
      
              Container(
                  margin: EdgeInsets.only(left: 110, top: 160),
                  child: Text(
                    "Your Account",
                    style: TextStyle(
                      color: Color.fromRGBO(88, 83, 83, 1),
                      fontFamily: "IBM Plex Mono",
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
      
              Container(
                height: 120,
                width: 110,
                margin: EdgeInsets.only(left: 128, top: 220),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/pp.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
      
              Container(
                  margin: EdgeInsets.only(left: 100, top: 350),
                  child: Text(
                    "Lance Mathew Abella",
                    style: TextStyle(
                      color: Color.fromRGBO(88, 83, 83, 1),
                      fontFamily: "IBM Plex Mono",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
              ),
      
              Container(
                margin: EdgeInsets.only(left: 20, top: 400),
                child: Text(
                  "Date of Birth:",
                  style: TextStyle(
                    color: Color.fromRGBO(88, 83, 83, 1),
                    fontFamily: "IBM Plex Mono",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
      
              Container(
                  margin: EdgeInsets.only(left: 170, top: 400),
                  child: Text(
                    "February 27, 2002",
                    style: TextStyle(
                      color: Color.fromRGBO(88, 83, 83, 1),
                      fontFamily: "IBM Plex Mono",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
              ),
      
              Container(
                margin: EdgeInsets.only(left: 20, top: 430),
                child: Text(
                  "Sex:",
                  style: TextStyle(
                    color: Color.fromRGBO(88, 83, 83, 1),
                    fontFamily: "IBM Plex Mono",
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
      
              Container(
                  margin: EdgeInsets.only(left: 170, top: 430),
                  child: Text(
                    "Male",
                    style: TextStyle(
                      color: Color.fromRGBO(88, 83, 83, 1),
                      fontFamily: "IBM Plex Mono",
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
              ),
      
              Container(
                margin: EdgeInsets.only(left: 20, top: 460),
                child: Text(
                  "Contact No.:",
                  style: TextStyle(
                    color: Color.fromRGBO(88, 83, 83, 1),
                    fontFamily: "IBM Plex Mono",
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
      
              Container(
                  margin: EdgeInsets.only(left: 170, top: 460),
                  child: Text(
                    "09945641269",
                    style: TextStyle(
                      color: Color.fromRGBO(88, 83, 83, 1),
                      fontFamily: "IBM Plex Mono",
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
              ),
      
              Container(
                margin: EdgeInsets.only(left: 20, top: 490),
                child: Text(
                  "Occupation:",
                  style: TextStyle(
                    color: Color.fromRGBO(88, 83, 83, 1),
                    fontFamily: "IBM Plex Mono",
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
      
              Container(
                  margin: EdgeInsets.only(left: 170, top: 490),
                  child: Text(
                    "Student",
                    style: TextStyle(
                      color: Color.fromRGBO(88, 83, 83, 1),
                      fontFamily: "IBM Plex Mono",
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
              ),
      
              Container(
                margin: EdgeInsets.only(left: 20, top: 520),
                child: Text(
                  "Address:",
                  style: TextStyle(
                    color: Color.fromRGBO(88, 83, 83, 1),
                    fontFamily: "IBM Plex Mono",
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
      
              Container(
                  margin: EdgeInsets.only(left: 170, top: 520),
                  child: Text(
                    "Dumlog, Talisay City",
                    style: TextStyle(
                      color: Color.fromRGBO(88, 83, 83, 1),
                      fontFamily: "IBM Plex Mono",
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
              ),
      
              Container(
                margin: EdgeInsets.only(left: 20, top: 570),
                child: Text(
                  "Blood Type:",
                  style: TextStyle(
                    color: Color.fromRGBO(88, 83, 83, 1),
                    fontFamily: "IBM Plex Mono",
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
      
              Container(
                  margin: EdgeInsets.only(left: 170, top: 570),
                  child: Text(
                    "B+",
                    style: TextStyle(
                      color: Color.fromRGBO(88, 83, 83, 1),
                      fontFamily: "IBM Plex Mono",
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
              ),
      
              Container(
                height: 20,
                width: 400,
                margin: EdgeInsets.only(top: 665.5),
                child: Image(
                  image: AssetImage("assets/homepaged3.png"),
                ),
              ),
      
              Container(
                height: 20,
                width: 400,
                margin: EdgeInsets.only(top: 737.3),
                child: Image(
                  image: AssetImage("assets/homepaged3.png"),
                ),
              ),
      
                Container(
                height: 72,
                width: 70,
                margin: EdgeInsets.only(left: 295, top: 675),
                child: Image(
                  image: AssetImage("assets/homepageredline.png"),
                  fit: BoxFit.cover,
                ),
              ),
      
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Homepage())),
                child: Container(
                  height: 43,
                  width: 43,
                  margin: EdgeInsets.only(left: 16, top: 687),
                  child: Image(
                    image: AssetImage("assets/homebulletin.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
      
              // GestureDetector(
              //   onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Homepage())),
              //   child: Container(
              //       margin: EdgeInsets.only(left: 24, top: 730),
              //       child: Text(
              //         "home",
              //         style: TextStyle(
              //           color: Color.fromRGBO(216, 216, 216, 1),
              //           fontFamily: "IBM Plex Mono",
              //           fontSize: 11,
              //           fontWeight: FontWeight.w700,
              //         ),
              //       ),
              //     ),
              // ),
      
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>BulletinPage())),
                child: Container(
                  height: 41,
                  width: 41,
                  margin: EdgeInsets.only(left: 81, top: 687),
                  child: Image(
                    image: AssetImage("assets/chatbtn.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
      
              // GestureDetector(
              //   onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>BulletinPage())),
              //   child: Container(
              //       margin: EdgeInsets.only(left: 84, top: 730),
              //       child: Text(
              //         "forum",
              //         style: TextStyle(
              //           color: Color.fromRGBO(216, 216, 216, 1),
              //           fontFamily: "IBM Plex Mono",
              //           fontSize: 11,
              //           fontWeight: FontWeight.w700,
              //         ),
              //       ),
              //     ),
              // ),
      
              GestureDetector(
                onTap: () async => await Navigator.of(context).push(MaterialPageRoute(builder: (context) =>CallPage())),
                onLongPress: () {                  
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>LightIndicator()));
                },
                child: Container(
                  height: 80,
                  width: 80,
                  margin: EdgeInsets.only(left: 144, top: 670),
                  child: Image(
                    image: AssetImage("assets/homepaged9.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
      
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>SettingsPage())),
                child: Container(
                  height: 43,
                  width: 43,
                  margin: EdgeInsets.only(left: 244, top: 687),
                  child: Image(
                    image: AssetImage("assets/settingsbtn.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
      
              // GestureDetector(
              //   onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>SettingsPage())),
              //   child: Container(
              //       margin: EdgeInsets.only(left: 247, top: 730),
              //       child: Text(
              //         "settings",
              //         style: TextStyle(
              //           color: Color.fromRGBO(216, 216, 216, 1),
              //           fontFamily: "IBM Plex Mono",
              //           fontSize: 11,
              //           fontWeight: FontWeight.w700,
              //         ),
              //       ),
              //     ),
              // ),
      
              Container(
                height: 43,
                width: 43,
                margin: EdgeInsets.only(left: 305, top: 687),
                child: Image(
                  image: AssetImage("assets/redperson.png"),
                  fit: BoxFit.cover,
                ),
              ),
      
              Container(
                  margin: EdgeInsets.only(left: 305, top: 730),
                  child: Text(
                    "profile",
                    style: TextStyle(
                      color: Color.fromRGBO(191, 27, 27, 1),
                      fontFamily: "IBM Plex Mono",
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () => MyDialog.showPostDialog(context), 
                  child: Container(
                    height: 60,
                    width: 60,
                    margin: EdgeInsets.only(left: 280, top: 600),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(191, 27, 27, 1),
                      shape: BoxShape.circle, // Make the container circular
                    ),
                    child: Icon(
                      Icons.edit,
                      size: 30.0,
                    ),
                  ),
                ),

                
      
      
      
      
            ],
          ),
        ),
      ),
    );
  }
}