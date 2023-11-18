// ignore_for_file: prefer_const_constructors, unused_field, prefer_collection_literals

import 'package:flutter/material.dart';
import 'package:lifeline_assistance/Objects/contacts.dart';
import 'package:lifeline_assistance/pages/bulletin_page.dart';
import 'package:lifeline_assistance/pages/calling1.dart';
import 'package:lifeline_assistance/pages/calling2.dart';
import 'package:lifeline_assistance/pages/calling3.dart';
import 'package:lifeline_assistance/pages/home_page.dart';
import 'package:lifeline_assistance/pages/light_indicator_page.dart';
import 'package:lifeline_assistance/pages/profile_page.dart';
import 'package:lifeline_assistance/pages/settings_page.dart';

class CallPage extends StatelessWidget {
  CallPage({super.key});

   Map<String, dynamic> contacts={
    "name": ["Talisay CT-TODA", "Talisay Fireman Landline", "Talisay Fireman Mobile", "Cebu City Police Station Mobile"],
    "number": ["353-1829", "462-4109", "09153315158", "09945641269"],
    "distance": ["20m radius away", "20m radius away", "20m radius away", "2km radius away"],
    "badge": ["assets/badge1.png", "assets/badge2.png", "assets/badge2.png", "assets/badge1.png"],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onHorizontalDragEnd: (details) {
          if (details.primaryVelocity! > 0) {            
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => BulletinPage()));
          } 
          else if (details.primaryVelocity! < 0) {            
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => SettingsPage()));
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
      
              Container(
                height: 800,
                width: 300,
                margin: EdgeInsets.only(left: 30, bottom: 240),
                child: Image(
                  image: AssetImage("assets/map.png"),
                ),
              ),
                         
              Container(
                  margin: EdgeInsets.only(left: 130, top: 365),
                  child: Text(
                    "Contacts",
                    style: TextStyle(
                      color: Color.fromRGBO(88, 83, 83, 1),
                      fontFamily: "IBM Plex Mono",
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

              Container(
                margin: EdgeInsets.only(top: 400),
                height: 275,
                padding: EdgeInsets.all(5),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: contacts["name"].length,
                  itemBuilder: (context, index){
                    return Contact(
                      name: contacts["name"][index], 
                      number: contacts["number"][index], 
                      distance: contacts["distance"][index],
                      badge: contacts["badge"][index],
                      );

                }),
              ),
      
              // Container(
              //   height: 20,
              //   width: 400,
              //   margin: EdgeInsets.only(top: 400),
              //   child: Image(
              //     image: AssetImage("assets/homepaged3.png"),
              //   ),
              // ),
            
              // Container(
              //   margin: EdgeInsets.only(top: 410),
              //   height: 270,
              //   padding: EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
              //   child: SingleChildScrollView(
              //     child: Stack(
              //       children: [
              //         Container(
              //           margin: EdgeInsets.only(left: 50, top: 27),
              //           child: Text(
              //             "353-1829",
              //             style: TextStyle(
              //               color: Color.fromRGBO(88, 83, 83, 1),
              //               fontFamily: "IBM Plex Mono",
              //               fontSize: 16,
              //               fontWeight: FontWeight.w400,
              //             ),
              //           ),
              //         ),

              //         Container(
              //     margin: EdgeInsets.only(left: 50, top: 45),
              //     child: Text(
              //       "20m away",
              //       style: TextStyle(
              //         color: Color.fromRGBO(88, 83, 83, 1),
              //         fontFamily: "IBM Plex Mono",
              //         fontSize: 16,
              //         fontWeight: FontWeight.w400,
              //       ),
              //     ),
              //   ),

              //   Container(
              //     height: 28,
              //     width: 36,
              //     margin: EdgeInsets.only(left: 130, top: 43),
              //     child: Image(
              //       image: AssetImage("assets/badge1.png"),
              //     ),
              //   ),
      
              //   GestureDetector(
              //   onLongPress: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Calling1())),
              //   child: Container(              
              //     height: 70,
              //     width: 300,
              //       margin: EdgeInsets.only(left: 50, top: 5),
              //       child: Text(
              //         "Talisay CT-TODA",
              //         style: TextStyle(
              //           color: Color.fromRGBO(88, 83, 83, 1),
              //           fontFamily: "IBM Plex Mono",
              //           fontSize: 17,
              //           fontWeight: FontWeight.w600,
              //         ),
              //       ),
              //     ),
              // ),
      
              // Container(
              //   height: 20,
              //   width: 400,
              //   margin: EdgeInsets.only( top: 70),
              //   child: Image(
              //     image: AssetImage("assets/homepaged3.png"),
              //   ),
              // ),                     
      
              // Container(
              //     margin: EdgeInsets.only(left: 50, top: 117),
              //     child: Text(
              //       "462-4109",
              //       style: TextStyle(
              //         color: Color.fromRGBO(88, 83, 83, 1),
              //         fontFamily: "IBM Plex Mono",
              //         fontSize: 16,
              //         fontWeight: FontWeight.w400,
              //       ),
              //     ),
              //   ),
      
              // Container(
              //     margin: EdgeInsets.only(left: 50, top: 135),
              //     child: Text(
              //       "38m away",
              //       style: TextStyle(
              //         color: Color.fromRGBO(88, 83, 83, 1),
              //         fontFamily: "IBM Plex Mono",
              //         fontSize: 16,
              //         fontWeight: FontWeight.w400,
              //       ),
              //     ),
              //   ),

              //   Container(
              //     height: 28,
              //     width: 36,
              //     margin: EdgeInsets.only(left: 130, top: 133),
              //     child: Image(
              //       image: AssetImage("assets/badge2.png"),
              //     ),
              //   ),
      
              //   GestureDetector(
              //   onLongPress: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Calling2())),
              //   child: Container(
              //     height: 70,
              //     width: 300,
              //     margin: EdgeInsets.only(left: 50, top: 95),
              //     child: Text(
              //       "Talisay Fireman Landline",
              //       style: TextStyle(
              //         color: Color.fromRGBO(88, 83, 83, 1),
              //         fontFamily: "IBM Plex Mono",
              //         fontSize: 17,
              //         fontWeight: FontWeight.w600,
              //       ),
              //     ),
              //   ),
              // ),   
      
              // Container(
              //   height: 20,
              //   width: 400,
              //   margin: EdgeInsets.only( top: 160),
              //   child: Image(
              //     image: AssetImage("assets/homepaged3.png"),
              //   ),
              // ),            
            
              // Container(
              //   margin: EdgeInsets.only(left: 51, top: 207),
              //   child: Text(
              //     "09153315158",
              //     style: TextStyle(
              //       color: Color.fromRGBO(88, 83, 83, 1),
              //       fontFamily: "IBM Plex Mono",
              //       fontSize: 16,
              //       fontWeight: FontWeight.w400,
              //     ),
              //   ),
              // ),
      
              // Container(
              //   margin: EdgeInsets.only(left: 50, top: 225),
              //   child: Text(
              //     "38m away",
              //     style: TextStyle(
              //       color: Color.fromRGBO(88, 83, 83, 1),
              //       fontFamily: "IBM Plex Mono",
              //       fontSize: 16,
              //       fontWeight: FontWeight.w400,
              //     ),
              //   ),
              // ), 

              // Container(
              //   height: 28,
              //   width: 36,
              //   margin: EdgeInsets.only(left: 130, top: 225),
              //   child: Image(
              //     image: AssetImage("assets/badge2.png"),
              //   ),
              // ),   
      
              // GestureDetector(
              //   onLongPress: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Calling3())),
              //   child: Container(
              //     height: 70,
              //     width: 300,
              //     margin: EdgeInsets.only(left: 50, top: 185),
              //     child: Text(
              //       "Talisay Fireman Mobile",
              //       style: TextStyle(
              //         color: Color.fromRGBO(88, 83, 83, 1),
              //         fontFamily: "IBM Plex Mono",
              //         fontSize: 17,
              //         fontWeight: FontWeight.w600,
              //       ),
              //     ),
              //   ),
              // ),          
              //       ]
              //     ),
              //   ),
              // ),
      
                     
      
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
                onLongPress: () {                  
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>LightIndicator()));
                },
                child: Container(
                  height: 80,
                  width: 80,
                  margin: EdgeInsets.only(left: 144, top: 670),
                  child: Image(
                    image: AssetImage("assets/call.png"),
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
      
              // GestureDetector(
              //   onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>ProfilePage())),
              //   child: Container(
              //       margin: EdgeInsets.only(left: 310, top: 730),
              //       child: Text(
              //         "profile",
              //         style: TextStyle(
              //           color: Color.fromRGBO(216, 216, 216, 1),
              //           fontFamily: "IBM Plex Mono",
              //           fontSize: 11,
              //           fontWeight: FontWeight.w700,
              //         ),
              //       ),
              //     ),
              // ),                    
            ],
          ),
        ),
      ),
    );
  }
}