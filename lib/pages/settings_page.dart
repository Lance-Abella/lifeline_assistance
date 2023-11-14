// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:lifeline_assistance/pages/bulletin_page.dart';
import 'package:lifeline_assistance/pages/call_page.dart';
import 'package:lifeline_assistance/pages/home_page.dart';
import 'package:lifeline_assistance/pages/light_indicator_page.dart';
import 'package:lifeline_assistance/pages/login_page.dart';
import 'package:lifeline_assistance/pages/notification_page.dart';
import 'package:lifeline_assistance/pages/profile_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onHorizontalDragEnd: (details) {
          if (details.primaryVelocity! > 0) {            
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => CallPage()));
          } 
          else if (details.primaryVelocity! < 0) {            
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfilePage()));
          }
        },
        child: Container(
          color: Colors.white,
          height: 800,
          width: 400,
          child: Stack(
            children: [
              Container(
                height: 1000,
                width: 500,
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
                  margin: EdgeInsets.only(left: 137, top: 160),
                  child: Text(
                    "Settings",
                    style: TextStyle(
                      color: Color.fromRGBO(88, 83, 83, 1),
                      fontFamily: "IBM Plex Mono",
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
      
              Container(
                height: 20,
                width: 400,
                margin: EdgeInsets.only(top: 210),
                child: Image(
                  image: AssetImage("assets/homepaged3.png"),
                ),
              ),
      
              Container(
                height: 32,
                width: 32,
                margin: EdgeInsets.only(left: 30, top: 240),
                child: Image(
                  image: AssetImage("assets/bell.png"),
                  fit: BoxFit.fill,
                ),
              ),
      
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Notif())),
                child: Container(
                    margin: EdgeInsets.only(left: 70, top: 245),
                    child: Text(
                      "Notifications",
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
                margin: EdgeInsets.only(top: 280),
                child: Image(
                  image: AssetImage("assets/homepaged3.png"),
                ),
              ),
      
              Container(
                height: 32,
                width: 32,
                margin: EdgeInsets.only(left: 30, top: 310),
                child: Image(
                  image: AssetImage("assets/night-mode.png"),
                  fit: BoxFit.fill,
                ),
              ),
      
              Container(
                  margin: EdgeInsets.only(left: 70, top: 315),
                  child: Text(
                    "Appearance",
                    style: TextStyle(
                      color: Color.fromRGBO(88, 83, 83, 1),
                      fontFamily: "IBM Plex Mono",
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
      
              Container(
                height: 20,
                width: 400,
                margin: EdgeInsets.only(top: 350),
                child: Image(
                  image: AssetImage("assets/homepaged3.png"),
                ),
              ),
      
              Container(
                height: 32,
                width: 32,
                margin: EdgeInsets.only(left: 30, top: 380),
                child: Image(
                  image: AssetImage("assets/lock.png"),
                  fit: BoxFit.fill,
                ),
              ),
      
              Container(
                  margin: EdgeInsets.only(left: 70, top: 385),
                  child: Text(
                    "Privacy & Security",
                    style: TextStyle(
                      color: Color.fromRGBO(88, 83, 83, 1),
                      fontFamily: "IBM Plex Mono",
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
      
              Container(
                height: 20,
                width: 400,
                margin: EdgeInsets.only(top: 420),
                child: Image(
                  image: AssetImage("assets/homepaged3.png"),
                ),
              ),
      
              Container(
                height: 32,
                width: 32,
                margin: EdgeInsets.only(left: 30, top: 450),
                child: Image(
                  image: AssetImage("assets/support.png"),
                  fit: BoxFit.fill,
                ),
              ),
      
              Container(
                  margin: EdgeInsets.only(left: 70, top: 455),
                  child: Text(
                    "Help & Support",
                    style: TextStyle(
                      color: Color.fromRGBO(88, 83, 83, 1),
                      fontFamily: "IBM Plex Mono",
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
      
              Container(
                height: 20,
                width: 400,
                margin: EdgeInsets.only(top: 490),
                child: Image(
                  image: AssetImage("assets/homepaged3.png"),
                ),
              ),
      
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>LoginPage())),
                child: Container(
                  height: 32,
                  width: 32,
                  margin: EdgeInsets.only(left: 30, top: 515),
                  child: Image(
                    image: AssetImage("assets/exit.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
      
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>LoginPage())),
                child: Container(                
                  height: 35,
                  width: 200,
                    margin: EdgeInsets.only(left: 70, top: 520),
                    child: Text(
                      "Logout",
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
                margin: EdgeInsets.only(top: 550),
                child: Image(
                  image: AssetImage("assets/homepaged3.png"),
                ),
              ),
      
              Container(
                height: 32,
                width: 32,
                margin: EdgeInsets.only(left: 30, top: 580),
                child: Image(
                  image: AssetImage("assets/info.png"),
                  fit: BoxFit.fill,
                ),
              ),
      
              Container(
                  margin: EdgeInsets.only(left: 70, top: 585),
                  child: Text(
                    "About",
                    style: TextStyle(
                      color: Color.fromRGBO(88, 83, 83, 1),
                      fontFamily: "IBM Plex Mono",
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
      
              Container(
                height: 20,
                width: 400,
                margin: EdgeInsets.only(top: 620),
                child: Image(
                  image: AssetImage("assets/homepaged3.png"),
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
                margin: EdgeInsets.only(left: 230, top: 675),
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
      
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Homepage())),
                child: Container(
                    margin: EdgeInsets.only(left: 24, top: 730),
                    child: Text(
                      "home",
                      style: TextStyle(
                        color: Color.fromRGBO(216, 216, 216, 1),
                        fontFamily: "IBM Plex Mono",
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
              ),
      
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
      
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>BulletinPage())),
                child: Container(
                    margin: EdgeInsets.only(left: 84, top: 730),
                    child: Text(
                      "forum",
                      style: TextStyle(
                        color: Color.fromRGBO(216, 216, 216, 1),
                        fontFamily: "IBM Plex Mono",
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
              ),
      
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>CallPage())),
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
      
              Container(
                height: 43,
                width: 43,
                margin: EdgeInsets.only(left: 244, top: 687),
                child: Image(
                  image: AssetImage("assets/redsettings.png"),
                  fit: BoxFit.cover,
                ),
              ),
      
              Container(
                  margin: EdgeInsets.only(left: 247, top: 730),
                  child: Text(
                    "settings",
                    style: TextStyle(
                      color: Color.fromRGBO(191, 27, 27, 1),
                      fontFamily: "IBM Plex Mono",
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
      
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>ProfilePage())),
                child: Container(
                  height: 43,
                  width: 43,
                  margin: EdgeInsets.only(left: 305, top: 687),
                  child: Image(
                    image: AssetImage("assets/personbtn.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
      
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>ProfilePage())),
                child: Container(
                    margin: EdgeInsets.only(left: 310, top: 730),
                    child: Text(
                      "profile",
                      style: TextStyle(
                        color: Color.fromRGBO(216, 216, 216, 1),
                        fontFamily: "IBM Plex Mono",
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                      ),
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