// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, must_be_immutable, prefer_relative_imports

import 'package:flutter/material.dart';
import 'package:lifeline_assistance/pages/bulletin_page.dart';
import 'package:lifeline_assistance/pages/call_page.dart';
import 'package:lifeline_assistance/pages/home_page.dart';
import 'package:lifeline_assistance/pages/light_indicator_page.dart';
import 'package:lifeline_assistance/pages/profile_page.dart';
import 'package:lifeline_assistance/pages/settings_page.dart';
import '../Objects/notifs.dart';

class Notif extends StatelessWidget {
  Notif({super.key});

   Map<String, dynamic> notification={
    
    "image": ["assets/like.png", "assets/megaphone.png", "assets/megaphone.png", "assets/megaphone.png", "assets/like.png", "assets/warning.png"],
    "title": ["Your ticket has been approved!", "New announcement!", "New announcement!", "New announcement!", "Your ticket has been approved!", "new daily tip has been posted!" ],
    "message": ["Develop and share disaster preparedness plans and resources...", "Emergency Preparedness: Have a Plan, Stay Informed.", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod...", "Quis auctor elit sed vulputate mi sit amet. Eget lorem dolor sed viverra...", "Venenatis lectus magna fringilla urna porttitor. Semper auctor neque...", "click to view the post."],
    "duration": ["24 mins ago", "1 hr ago", "2 hr ago", "2 hr ago", "5 hr ago", "1 d ago"],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onHorizontalDragEnd: (details) {
          if (details.primaryVelocity! < 0) {            
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => BulletinPage()));
          }
        },        
        child: Container(
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
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Homepage())),
                child: Container(
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.only(left: 22, top: 90),
                  child: Image(
                    image: AssetImage("assets/back.png"),              
                  ),
                ),
              ),
              
              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Notif())),
                child: Container(
                  height: 47,
                  width: 35,
                  margin: EdgeInsets.only(left: 305, top: 92),
                  child: Image(
                    image: AssetImage("assets/notif.png"),
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
                  margin: EdgeInsets.only(left: 20, top: 170),
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

              Container(
                height: 6,
                width: 26,
                margin: EdgeInsets.only(left: 308, top: 180),
                child: Image(
                  image: AssetImage("assets/3-dots.png"),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 200),
                height: 475,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: notification["image"].length,
                  itemBuilder: (context, index){
                    return Notifs(
                      image: notification["image"][index], 
                      title: notification["title"][index], 
                      message: notification["message"][index],
                      duration: notification["duration"][index],
                      );

                }),
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
              
            ]),
        ),
      ),
    );
  }
}