// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lifeline_assistance/pages/bulletin_page.dart';
import 'package:lifeline_assistance/pages/call_page.dart';
import 'package:lifeline_assistance/pages/home_page.dart';
import 'package:lifeline_assistance/pages/profile_page.dart';
import 'package:lifeline_assistance/pages/settings_page.dart';

class RegisteredVolunteers extends StatelessWidget {
  const RegisteredVolunteers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
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

            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Homepage())),
              child: Container(
                height: 31,
                width: 31,
                margin: EdgeInsets.only(left: 20, top: 60),
                child: Image(
                  image: AssetImage("assets/arrow-left.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Container(
                margin: EdgeInsets.only(left: 67, top: 180),
                child: Text(
                  "REGISTER TO BE A VOLUNTEER",
                  style: TextStyle(
                    color: Color.fromRGBO(88, 83, 83, 1),
                    fontFamily: "IBM Plex Mono",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),

            Container(
              height: 90,
              width: 93,
              margin: EdgeInsets.only(left: 15, top: 220),
              child: Image(
                image: AssetImage("assets/Abella.png"),
                fit: BoxFit.cover,
              ),
            ),

            Container(
              height: 90,
              width: 105,
              margin: EdgeInsets.only(left: 125, top: 219),
              child: Image(
                image: AssetImage("assets/Ceniza.png"),
                fit: BoxFit.cover,
              ),
            ),

            Container(
              height: 90,
              width: 90,
              margin: EdgeInsets.only(left: 250, top: 219),
              child: Image(
                image: AssetImage("assets/Cooper.png"),
                fit: BoxFit.cover,
              ),
            ), 

            Container(
              height: 83,
              width: 63,
              margin: EdgeInsets.only(left: 31, top: 319),
              child: Image(
                image: AssetImage("assets/Cox.png"),
                fit: BoxFit.cover,
              ),
            ),

            Container(
              height: 83,
              width: 101,
              margin: EdgeInsets.only(left: 128, top: 319),
              child: Image(
                image: AssetImage("assets/Foster.png"),
                fit: BoxFit.cover,
              ),
            ), 

            Container(
              height: 85,
              width: 75,
              margin: EdgeInsets.only(left: 258, top: 319),
              child: Image(
                image: AssetImage("assets/Parker.png"),
                fit: BoxFit.cover,
              ),
            ),

            Container(
              height: 82,
              width: 85,
              margin: EdgeInsets.only(left: 20, top: 416),
              child: Image(
                image: AssetImage("assets/Powell.png"),
                fit: BoxFit.cover,
              ),
            ),

            Container(
              height: 84,
              width: 94,
              margin: EdgeInsets.only(left: 131, top: 415),
              child: Image(
                image: AssetImage("assets/Ramirez.png"),
                fit: BoxFit.cover,
              ),
            ),

            Container(
              height: 85,
              width: 100,
              margin: EdgeInsets.only(left: 246, top: 414),
              child: Image(
                image: AssetImage("assets/Richardson.png"),
                fit: BoxFit.cover,
              ),
            ), 

            Container(
              height: 83,
              width: 84,
              margin: EdgeInsets.only(left: 20, top: 510),
              child: Image(
                image: AssetImage("assets/Simmons.png"),
                fit: BoxFit.cover,
              ),
            ),

            Container(
              height: 84,
              width: 91,
              margin: EdgeInsets.only(left: 133, top: 510),
              child: Image(
                image: AssetImage("assets/Stewart.png"),
                fit: BoxFit.cover,
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
              margin: EdgeInsets.only(left: 0, top: 675),
              child: Image(
                image: AssetImage("assets/homepageredline.png"),
                fit: BoxFit.cover,
              ),
            ),

            Container(
              height: 43,
              width: 43,
              margin: EdgeInsets.only(left: 16, top: 687),
              child: Image(
                image: AssetImage("assets/homebtn.png"),
                fit: BoxFit.cover,
              ),
            ),

            Container(
                margin: EdgeInsets.only(left: 24, top: 730),
                child: Text(
                  "home",
                  style: TextStyle(
                    color: Color.fromRGBO(191, 27, 27, 1),
                    fontFamily: "IBM Plex Mono",
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
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
                    "bulletin",
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

            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>SettingsPage())),
              child: Container(
                  margin: EdgeInsets.only(left: 247, top: 730),
                  child: Text(
                    "settings",
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
    );
  }
}