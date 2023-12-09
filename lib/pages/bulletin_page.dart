// ignore_for_file: prefer_const_constructors, unused_local_variable, sized_box_for_whitespace, must_be_immutable

import 'package:flutter/material.dart';
import 'package:lifeline_assistance/Objects/forum.dart';
import 'package:lifeline_assistance/pages/call_page.dart';
import 'package:lifeline_assistance/pages/home_page.dart';
import 'package:lifeline_assistance/pages/light_indicator_page.dart';
import 'package:lifeline_assistance/pages/profile_page.dart';
import 'package:lifeline_assistance/pages/settings_page.dart';

class BulletinPage extends StatelessWidget {
  BulletinPage({super.key});

  Map<String, dynamic> approvedTickets={
    "profile": ["assets/basic-profile.png", "assets/basic-profile.png", "assets/basic-profile.png", "assets/basic-profile.png"],
    "duration": ["3h", "1w", "1w", "2w"],
    "message": ["Offer workshops, seminars, and informational sessions on important issues affecting the community.", "Implement recycling programs and encourage waste reduction and sustainability practices.", "Develop and share disaster preparedness plans and resources to ensure community resilience.", "Establish programs and activities to engage and empower the youth within the community."],
    "reacts": ["2", "4", "4", "2"],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
         onHorizontalDragEnd: (details) {
          if (details.primaryVelocity! > 0) {            
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Homepage()));
          } 
          else if (details.primaryVelocity! < 0) {            
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => CallPage()));
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
                margin: EdgeInsets.only(top: 150),
                height: 525,
                padding: EdgeInsets.all(5),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: approvedTickets["profile"].length,
                  itemBuilder: (context, index){
                    return Forum(
                      profile: approvedTickets["profile"][index], 
                      duration: approvedTickets["duration"][index], 
                      message: approvedTickets["message"][index],
                      reacts: approvedTickets["reacts"][index],
                      );

                }),
              ), 
      
        //       GestureDetector(
        //         onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>BulletinPage())),
        //         child: Container(
        //           height: 50,
        //           width: 50,
        //           margin: EdgeInsets.only(left: 22, top: 90),
        //           child: Image(
        //             image: AssetImage("assets/rotate.png"),              
        //           ),
        //         ),
        //       ),

        //       GestureDetector(
        //         onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>BulletinPage())),
        //         child: Container(              
        //             margin: EdgeInsets.only(left: 25, top: 130),
        //             child: Text(
        //               "Refresh",
        //               style: TextStyle(
        //                 color: Color.fromRGBO(191, 27, 27, 1),
        //                 fontFamily: "IBM Plex Mono",
        //                 fontSize: 14,
        //                 fontWeight: FontWeight.w600,
        //               ),
        //             ),
        //           ),
        //       ),
      
              GestureDetector(
                onTap: () {
                  
                  _showPostDialog(context);
                },
                child: Container(
                height: 47,
                width: 35,
                margin: EdgeInsets.only(left: 305, top: 90),
                child: Image(
                  image: AssetImage("assets/new.png"),
                ),
                  ),
        ),

        //       Container(
        //         height: 20,
        //         width: 400, 
        //         margin: EdgeInsets.only(top: 170),                        
        //         child: Image(
        //           image: AssetImage("assets/homepaged3.png"),
        //         ),
        //       ),
      
        //       Container(
        //         margin: EdgeInsets.only(top: 180),
        //         height: 500,
        //         padding: EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
        //         child: SingleChildScrollView(
        //           child: Stack(
        //             children: [
        //               Container(
        //                 height: 53,
        //                 width: 59,
        //                 margin: EdgeInsets.only(top: 5),
        //                 child: Image(
        //                   image: AssetImage("assets/basic-profile.png"),
        //                 ),
        //               ),

        //               Container(                  
        //                 margin: EdgeInsets.only(left:60, top: 15),
        //                 child: Text(
        //                   "Anonymous",
        //                   style: TextStyle(
        //                     color: Color.fromRGBO(88, 83, 83, 1),
        //                     fontFamily: "IBM Plex Mono",
        //                     fontSize: 15,
        //                     fontWeight: FontWeight.w500,
        //                   ),
        //                 ),
        //               ),

        //               Container(                  
        //                 margin: EdgeInsets.only(left:61, top: 35),
        //                 child: Text(
        //                   "3h",
        //                   style: TextStyle(
        //                     color: Color.fromRGBO(88, 83, 83, 1),
        //                     fontFamily: "IBM Plex Mono",
        //                     fontSize: 11,
        //                     fontWeight: FontWeight.w400,
        //                   ),
        //                 ),
        //               ),

        //               Container(                  
        //                 margin: EdgeInsets.only(left: 61, top: 50),
        //                 child: Text(
        //                   "Offer workshops, seminars, and informational sessions on important issues affecting the community.",
        //                   style: TextStyle(
        //                     color: Color.fromRGBO(88, 83, 83, 1),
        //                     fontFamily: "IBM Plex Mono",
        //                     fontSize: 14,
        //                     fontWeight: FontWeight.w400,
        //                   ),
        //                 ),
        //               ),

        //               Container(
        //                 height: 30,
        //                 width: 40,
        //                 margin: EdgeInsets.only(left: 61, top: 100),
        //                 child: Image(
        //                   image: AssetImage("assets/f1.png"),
        //                 ),
        //               ),

        //               Container(
        //                 height: 6,
        //                 width: 26,
        //                 margin: EdgeInsets.only(left: 280, top: 110),
        //                 child: Image(
        //                   image: AssetImage("assets/red-3dots.png"),
        //                 ),
        //               ),

        //               Container(
        //                 height: 20,
        //                 width: 400, 
        //                 margin: EdgeInsets.only(top: 130),                        
        //                 child: Image(
        //                   image: AssetImage("assets/homepaged3.png"),
        //                 ),
        //               ),

        //               Container(
        //                 height: 53,
        //                 width: 59,
        //                 margin: EdgeInsets.only(top: 155),
        //                 child: Image(
        //                   image: AssetImage("assets/basic-profile.png"),
        //                 ),
        //               ),

        //               Container(                  
        //                 margin: EdgeInsets.only(left:60, top: 165),
        //                 child: Text(
        //                   "Anonymous",
        //                   style: TextStyle(
        //                     color: Color.fromRGBO(88, 83, 83, 1),
        //                     fontFamily: "IBM Plex Mono",
        //                     fontSize: 15,
        //                     fontWeight: FontWeight.w500,
        //                   ),
        //                 ),
        //               ),

        //               Container(                  
        //                 margin: EdgeInsets.only(left:61, top: 185),
        //                 child: Text(
        //                   "1w",
        //                   style: TextStyle(
        //                     color: Color.fromRGBO(88, 83, 83, 1),
        //                     fontFamily: "IBM Plex Mono",
        //                     fontSize: 11,
        //                     fontWeight: FontWeight.w400,
        //                   ),
        //                 ),
        //               ),

        //               Container(                  
        //                 margin: EdgeInsets.only(left: 61, top: 200),
        //                 child: Text(
        //                   "Implement recycling programs and encourage waste reduction and sustainability practices.",
        //                   style: TextStyle(
        //                     color: Color.fromRGBO(88, 83, 83, 1),
        //                     fontFamily: "IBM Plex Mono",
        //                     fontSize: 14,
        //                     fontWeight: FontWeight.w400,
        //                   ),
        //                 ),
        //               ),

        //               Container(
        //                 height: 28,
        //                 width: 34,
        //                 margin: EdgeInsets.only(left: 62, top: 237),
        //                 child: Image(
        //                   image: AssetImage("assets/f2.png"),
        //                 ),
        //               ),

        //               Container(
        //                 height: 6,
        //                 width: 26,
        //                 margin: EdgeInsets.only(left: 280, top: 250),
        //                 child: Image(
        //                   image: AssetImage("assets/red-3dots.png"),
        //                 ),
        //               ),

        //               Container(
        //                 height: 20,
        //                 width: 400, 
        //                 margin: EdgeInsets.only(top: 265),                        
        //                 child: Image(
        //                   image: AssetImage("assets/homepaged3.png"),
        //                 ),
        //               ),

        //               Container(
        //                 height: 53,
        //                 width: 59,
        //                 margin: EdgeInsets.only(top: 290),
        //                 child: Image(
        //                   image: AssetImage("assets/basic-profile.png"),
        //                 ),
        //               ),

        //               Container(                  
        //                 margin: EdgeInsets.only(left:60, top: 300),
        //                 child: Text(
        //                   "Anonymous",
        //                   style: TextStyle(
        //                     color: Color.fromRGBO(88, 83, 83, 1),
        //                     fontFamily: "IBM Plex Mono",
        //                     fontSize: 15,
        //                     fontWeight: FontWeight.w500,
        //                   ),
        //                 ),
        //               ),

        //               Container(                  
        //                 margin: EdgeInsets.only(left:61, top: 320),
        //                 child: Text(
        //                   "1w",
        //                   style: TextStyle(
        //                     color: Color.fromRGBO(88, 83, 83, 1),
        //                     fontFamily: "IBM Plex Mono",
        //                     fontSize: 11,
        //                     fontWeight: FontWeight.w400,
        //                   ),
        //                 ),
        //               ),

        //               Container(                  
        //                 margin: EdgeInsets.only(left: 61, top: 335),
        //                 child: Text(
        //                   "Develop and share disaster preparedness plans and resources to ensure community resilience.",
        //                   style: TextStyle(
        //                     color: Color.fromRGBO(88, 83, 83, 1),
        //                     fontFamily: "IBM Plex Mono",
        //                     fontSize: 14,
        //                     fontWeight: FontWeight.w400,
        //                   ),
        //                 ),
        //               ),

        //               Container(
        //                 height: 28,
        //                 width: 34,
        //                 margin: EdgeInsets.only(left: 62, top: 388),
        //                 child: Image(
        //                   image: AssetImage("assets/f3.png"),
        //                 ),
        //               ),

        //               Container(
        //                 height: 6,
        //                 width: 26,
        //                 margin: EdgeInsets.only(left: 280, top: 400),
        //                 child: Image(
        //                   image: AssetImage("assets/red-3dots.png"),
        //                 ),
        //               ),

        //               Container(
        //                 height: 20,
        //                 width: 400, 
        //                 margin: EdgeInsets.only(top: 415),                        
        //                 child: Image(
        //                   image: AssetImage("assets/homepaged3.png"),
        //                 ),
        //               ),

        //               Container(
        //                 height: 53,
        //                 width: 59,
        //                 margin: EdgeInsets.only(top: 440),
        //                 child: Image(
        //                   image: AssetImage("assets/basic-profile.png"),
        //                 ),
        //               ),

        //               Container(                  
        //                 margin: EdgeInsets.only(left:60, top: 450),
        //                 child: Text(
        //                   "Anonymous",
        //                   style: TextStyle(
        //                     color: Color.fromRGBO(88, 83, 83, 1),
        //                     fontFamily: "IBM Plex Mono",
        //                     fontSize: 15,
        //                     fontWeight: FontWeight.w500,
        //                   ),
        //                 ),
        //               ),

        //               Container(                  
        //                 margin: EdgeInsets.only(left:61, top: 470),
        //                 child: Text(
        //                   "2w",
        //                   style: TextStyle(
        //                     color: Color.fromRGBO(88, 83, 83, 1),
        //                     fontFamily: "IBM Plex Mono",
        //                     fontSize: 11,
        //                     fontWeight: FontWeight.w400,
        //                   ),
        //                 ),
        //               ),

        //               Container(                  
        //                 margin: EdgeInsets.only(left: 61, top: 490),
        //                 child: Text(
        //                   "Establish programs and activities to engage and empower the youth within the community.",
        //                   style: TextStyle(
        //                     color: Color.fromRGBO(88, 83, 83, 1),
        //                     fontFamily: "IBM Plex Mono",
        //                     fontSize: 14,
        //                     fontWeight: FontWeight.w400,
        //                   ),
        //                 ),
        //               ),

        //               Container(
        //                 height: 28,
        //                 width: 34,
        //                 margin: EdgeInsets.only(left: 62, top: 528),
        //                 child: Image(
        //                   image: AssetImage("assets/f2.png"),
        //                 ),
        //               ),

        //               Container(
        //                 height: 6,
        //                 width: 26,
        //                 margin: EdgeInsets.only(left: 280, top: 540),
        //                 child: Image(
        //                   image: AssetImage("assets/red-3dots.png"),
        //                 ),
        //               ),

        //               Container(
        //                 height: 20,
        //                 width: 400, 
        //                 margin: EdgeInsets.only(top: 555),                        
        //                 child: Image(
        //                   image: AssetImage("assets/homepaged3.png"),
        //                 ),
        //               ),
        //             ] 
        //           ),
        //         ),
        //       ),
      
              
      
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
                    "forum",
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

Future<void> _showPostDialog(BuildContext context) async {
    String userInput = ''; 

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Express your concerns'),
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
                  'Send', 
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