// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:lifeline_assistance/pages/bulleting_page2.dart';
import 'package:lifeline_assistance/pages/call_page.dart';
import 'package:lifeline_assistance/pages/home_page.dart';
import 'package:lifeline_assistance/pages/profile_page.dart';
import 'package:lifeline_assistance/pages/settings_page.dart';

class BulletinPage extends StatelessWidget {
  const BulletinPage({super.key});

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
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>BulletinPage())),
              child: Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.only(left: 22, top: 90),
                child: Image(
                  image: AssetImage("assets/refresh.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                
                _showPostDialog(context);
              },
              child: Container(
                height: 47,
                width: 35,
                margin: EdgeInsets.only(left: 305, top: 92),
                child: Image(
                  image: AssetImage("assets/post.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Container(
              height: 20,
              width: 400,
              margin: EdgeInsets.only(top: 150),
              child: Image(
                image: AssetImage("assets/homepaged3.png"),
              ),
            ),

            Container(
              height: 60,
              width: 320,
              margin: EdgeInsets.only(left: 20, top: 170),
              child: Image(
                image: AssetImage("assets/harper.png"),
                fit: BoxFit.fill,
              ),
            ),

            Container(
              height: 20,
              width: 400,
              margin: EdgeInsets.only(top: 255),
              child: Image(
                image: AssetImage("assets/homepaged3.png"),
              ),
            ),

            Container(
              height: 90,
              width: 320,
              margin: EdgeInsets.only(left: 20, top: 275),
              child: Image(
                image: AssetImage("assets/elizabeth.png"),
                fit: BoxFit.fill,
              ),
            ),

            Container(
              height: 20,
              width: 400,
              margin: EdgeInsets.only(top: 390),
              child: Image(
                image: AssetImage("assets/homepaged3.png"),
              ),
            ),

            Container(
              height: 90,
              width: 320,
              margin: EdgeInsets.only(left: 20, top: 410),
              child: Image(
                image: AssetImage("assets/liam.png"),
                fit: BoxFit.fill,
              ),
            ),

            Container(
              height: 20,
              width: 400,
              margin: EdgeInsets.only(top: 530),
              child: Image(
                image: AssetImage("assets/homepaged3.png"),
              ),
            ),

            Container(
              height: 110,
              width: 330,
              margin: EdgeInsets.only(left: 20, top: 550),
              child: Image(
                image: AssetImage("assets/perks.png"),
                fit: BoxFit.fill,
              ),
            ),

            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>BulletinPage2())),
              child: Container(
                height: 23,
                width: 160,
                margin: EdgeInsets.only(left: 80, top: 235),
                child: Image(
                  image: AssetImage("assets/10.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),

            Container(
              height: 23,
              width: 165,
              margin: EdgeInsets.only(left: 80, top: 370),
              child: Image(
                image: AssetImage("assets/2.png"),
                fit: BoxFit.fill,
              ),
            ),

            Container(
              height: 23,
              width: 165,
              margin: EdgeInsets.only(left: 80, top: 510),
              child: Image(
                image: AssetImage("assets/4.png"),
                fit: BoxFit.fill,
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
              margin: EdgeInsets.only(left: 65, top: 675),
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

            Container(
              height: 41,
              width: 41,
              margin: EdgeInsets.only(left: 81, top: 687),
              child: Image(
                image: AssetImage("assets/bulletinchat.png"),
                fit: BoxFit.cover,
              ),
            ),

            Container(
                margin: EdgeInsets.only(left: 84, top: 730),
                child: Text(
                  "bulletin",
                  style: TextStyle(
                    color: Color.fromRGBO(191, 27, 27, 1),
                    fontFamily: "IBM Plex Mono",
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
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

Future<void> _showPostDialog(BuildContext context) async {
    String userInput = ''; 

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('What\'s on your mind?'),
          content: TextField(
            onChanged: (text) {
              userInput = text;
            },
          ),
          actions: <Widget>[
            Container(
              height: 45,
              width: 84,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(88, 83, 83, 1),
                borderRadius: BorderRadius.all(Radius.circular(5))
              ),
              padding: EdgeInsets.all(5),
              child: TextButton(
                child: Text(
                  'Post', 
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
                onPressed: () {                                    
                  Navigator.of(context).pop(); 
                },
              ),
            ),
            Container(
              height: 45,
              width: 84,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(88, 83, 83, 1),
                borderRadius: BorderRadius.all(Radius.circular(5))
              ),
              padding: EdgeInsets.all(5),
              child: TextButton(
                child: Text(
                  'Cancel',
                  style: TextStyle(
                    color: Colors.white
                  ),),
                onPressed: () {
                  Navigator.of(context).pop(); 
                },
              ),
            ),
          ],
        );
      },
    );
  }