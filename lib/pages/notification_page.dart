// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:lifeline_assistance/pages/bulletin_page.dart';
import 'package:lifeline_assistance/pages/call_page.dart';
import 'package:lifeline_assistance/pages/home_page.dart';
import 'package:lifeline_assistance/pages/profile_page.dart';
import 'package:lifeline_assistance/pages/settings_page.dart';

class Notif extends StatelessWidget {
  const Notif({super.key});

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
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Homepage())),
                child: Container(              
                    margin: EdgeInsets.only(left: 31, top: 135),
                    child: Text(
                      "Back",
                      style: TextStyle(
                        color: Color.fromRGBO(191, 27, 27, 1),
                        fontFamily: "IBM Plex Mono",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
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

              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Notif())),
                child: Container(                      
                  width: 50,             
                  margin: EdgeInsets.only(left: 305, top: 130),                  
                  child: Text(
                    "Notif",
                    style: TextStyle(
                      color: Color.fromRGBO(191, 27, 27, 1),
                      fontFamily: "IBM Plex Mono",
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
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
                padding: EdgeInsets.only(top: 10, bottom: 10),
                margin: EdgeInsets.only(top: 190),
                height: 490,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Stack(
                    children: [
                    Container(
                      height: 55,
                      width: 55, 
                      margin: EdgeInsets.only(left: 20, top: 5),                       
                      child: Image(
                        image: AssetImage("assets/like.png"),
                      ),
                    ),
                  
                    Container(                  
                      margin: EdgeInsets.only(left:90, top: 5),
                      child: Text(
                        "Your ticket has been approved!",
                        style: TextStyle(
                          color: Color.fromRGBO(88, 83, 83, 1),
                          fontFamily: "IBM Plex Mono",
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  
                    Container(                  
                      margin: EdgeInsets.only(left: 90, top: 25),
                      child: Text(
                        "Develop and share disaster preparedness plans and resources...",
                        style: TextStyle(
                          color: Color.fromRGBO(88, 83, 83, 1),
                          fontFamily: "IBM Plex Mono",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  
                    Container(                  
                      margin: EdgeInsets.only(left:90, top: 60),
                      child: Text(
                        "24 mins ago",
                        style: TextStyle(
                          color: Color.fromRGBO(88, 83, 83, 0.58),
                          fontFamily: "IBM Plex Mono",
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  
                    Container(
                      height: 55,
                      width: 55, 
                      margin: EdgeInsets.only(left: 20, top: 90),                       
                      child: Image(
                        image: AssetImage("assets/megaphone.png"),
                      ),
                    ),
                    
                    Container(                  
                      margin: EdgeInsets.only(left:90, top: 90),
                      child: Text(
                        "Government official has a new post!",
                        style: TextStyle(
                          color: Color.fromRGBO(88, 83, 83, 1),
                          fontFamily: "IBM Plex Mono",
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  
                    Container(                  
                      margin: EdgeInsets.only(left: 90, top: 110),
                      child: Text(
                        "Emergency preparedness: Have a Plan, Stay Informed.",
                        style: TextStyle(
                          color: Color.fromRGBO(88, 83, 83, 1),
                          fontFamily: "IBM Plex Mono",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  
                    Container(                  
                      margin: EdgeInsets.only(left:90, top: 145),
                      child: Text(
                        "1 hr ago",
                        style: TextStyle(
                          color: Color.fromRGBO(88, 83, 83, 0.58),
                          fontFamily: "IBM Plex Mono",
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  
                    Container(
                      height: 55,
                      width: 55, 
                      margin: EdgeInsets.only(left: 20, top: 175),                       
                      child: Image(
                        image: AssetImage("assets/megaphone.png"),
                      ),
                    ),
                  
                    Container(                  
                      margin: EdgeInsets.only(left:90, top: 175),
                      child: Text(
                        "Government official has a new post!",
                        style: TextStyle(
                          color: Color.fromRGBO(88, 83, 83, 1),
                          fontFamily: "IBM Plex Mono",
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  
                    Container(                  
                      margin: EdgeInsets.only(left: 90, top: 195),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod...",
                        style: TextStyle(
                          color: Color.fromRGBO(88, 83, 83, 1),
                          fontFamily: "IBM Plex Mono",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  
                    Container(                  
                      margin: EdgeInsets.only(left:90, top: 230),
                      child: Text(
                        "2 hr ago",
                        style: TextStyle(
                          color: Color.fromRGBO(88, 83, 83, 0.58),
                          fontFamily: "IBM Plex Mono",
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  
                    Container(
                      height: 55,
                      width: 55, 
                      margin: EdgeInsets.only(left: 20, top: 260),                       
                      child: Image(
                        image: AssetImage("assets/megaphone.png"),
                      ),
                    ),
                  
                    Container(                  
                      margin: EdgeInsets.only(left:90, top: 260),
                      child: Text(
                        "Government official has a new post!",
                        style: TextStyle(
                          color: Color.fromRGBO(88, 83, 83, 1),
                          fontFamily: "IBM Plex Mono",
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  
                    Container(                  
                      margin: EdgeInsets.only(left: 90, top: 280),
                      child: Text(
                        "Quis auctor elit sed vulputate mi sit amet. Eget lorem dolor sed viverra...",
                        style: TextStyle(
                          color: Color.fromRGBO(88, 83, 83, 1),
                          fontFamily: "IBM Plex Mono",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  
                    Container(                  
                      margin: EdgeInsets.only(left:90, top: 315),
                      child: Text(
                        "2 hr ago",
                        style: TextStyle(
                          color: Color.fromRGBO(88, 83, 83, 0.58),
                          fontFamily: "IBM Plex Mono",
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
              
                    Container(
                      height: 55,
                      width: 55, 
                      margin: EdgeInsets.only(left: 20, top: 345),                       
                      child: Image(
                        image: AssetImage("assets/like.png"),
                      ),
                    ),
                  
                    Container(                  
                      margin: EdgeInsets.only(left:90, top: 345),
                      child: Text(
                        "Your ticket has been approved!",
                        style: TextStyle(
                          color: Color.fromRGBO(88, 83, 83, 1),
                          fontFamily: "IBM Plex Mono",
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  
                    Container(                  
                      margin: EdgeInsets.only(left: 90, top: 365),
                      child: Text(
                        "Venenatis lectus magna fringilla urna porttitor. Semper auctor neque...",
                        style: TextStyle(
                          color: Color.fromRGBO(88, 83, 83, 1),
                          fontFamily: "IBM Plex Mono",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  
                    Container(                  
                      margin: EdgeInsets.only(left:90, top: 400),
                      child: Text(
                        "3 hrs ago",
                        style: TextStyle(
                          color: Color.fromRGBO(88, 83, 83, 0.58),
                          fontFamily: "IBM Plex Mono",
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
              
                    Container(
                      height: 55,
                      width: 55, 
                      margin: EdgeInsets.only(left: 20, top: 430),                       
                      child: Image(
                        image: AssetImage("assets/warning.png"),
                      ),
                    ),
                  
                    Container(                  
                      margin: EdgeInsets.only(left:90, top: 430),
                      child: Text(
                        "New Weekly tip has been posted!",
                        style: TextStyle(
                          color: Color.fromRGBO(88, 83, 83, 1),
                          fontFamily: "IBM Plex Mono",
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  
                    Container(                  
                      margin: EdgeInsets.only(left: 90, top: 450),
                      child: Text(
                        "Click to view the post.",
                        style: TextStyle(
                          color: Color.fromRGBO(88, 83, 83, 1),
                          fontFamily: "IBM Plex Mono",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  
                    Container(                  
                      margin: EdgeInsets.only(left:90, top: 468),
                      child: Text(
                        "1d ago",
                        style: TextStyle(
                          color: Color.fromRGBO(88, 83, 83, 0.58),
                          fontFamily: "IBM Plex Mono",
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    ]
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

              
            ]),
        ),
      ),
    );
  }
}