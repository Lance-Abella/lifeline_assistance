// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, no_logic_in_create_state, library_private_types_in_public_api, unnecessary_new, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:lifeline_assistance/pages/bulletin_page.dart';
import 'package:lifeline_assistance/pages/call_page.dart';
import 'package:lifeline_assistance/pages/light_indicator_page.dart';
import 'package:lifeline_assistance/pages/notification_page.dart';
import 'package:lifeline_assistance/pages/profile_page.dart';
import 'package:lifeline_assistance/pages/settings_page.dart';
import 'package:video_player/video_player.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late VideoPlayerController _controller1;
  late VideoPlayerController _controller2;
  late VideoPlayerController _controller3;
  late List<VideoPlayerController> videos;

  @override
  void initState() {
    super.initState();

    _controller1 = VideoPlayerController.asset('assets/vid1.mp4');
    _controller2 = VideoPlayerController.asset('assets/vid2.mp4');
    _controller3 = VideoPlayerController.asset('assets/vid3.mp4');

    _controller1.initialize();
    _controller2.initialize();
    _controller3.initialize();

    videos = [
      _controller1,
      _controller2,
      _controller3,
    ];
  }

  @override
  void dispose() {
    for (var controller in videos) {
      controller.dispose();
    }

    super.dispose();
  }

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
      
              Center(
                child: Container(
                  height: 900,
                  width: 400,
                  margin: EdgeInsets.only(bottom: 580),
                  child: Image(
                    image: AssetImage("assets/homepaged2.png"),
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
                  margin: EdgeInsets.only(left: 135, top: 170),
                  child: Text(
                    "Weekly Tips",
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
                margin: EdgeInsets.only(top: 470),
                height: 214,
                padding: EdgeInsets.only(left:5, right: 5, bottom: 15),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Stack(
                    children: [
                      Container(
                        height: 53,
                        width: 59,                        
                        child: Image(
                          image: AssetImage("assets/official-profile.png"),
                        ),
                      ),
      
                      Container(                  
                        margin: EdgeInsets.only(left:60, top: 10),
                        child: Text(
                          "Talisay SK Chairman",
                          style: TextStyle(
                            color: Color.fromRGBO(88, 83, 83, 1),
                            fontFamily: "IBM Plex Mono",
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
      
                      Container(                  
                        margin: EdgeInsets.only(left:61, top: 28),
                        child: Text(
                          "1w",
                          style: TextStyle(
                            color: Color.fromRGBO(88, 83, 83, 1),
                            fontFamily: "IBM Plex Mono",
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
      
                      Container(                  
                        margin: EdgeInsets.only(left: 71, top: 47),
                        child: Text(
                          "What:",
                          style: TextStyle(
                            color: Color.fromRGBO(88, 83, 83, 1),
                            fontFamily: "IBM Plex Mono",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
      
                      Container(                  
                        margin: EdgeInsets.only(left: 117, top: 47),
                        child: Text(
                          "Job Fair 2023 - Connecting Job Seekers with Opportunities.",
                          style: TextStyle(
                            color: Color.fromRGBO(88, 83, 83, 1),
                            fontFamily: "IBM Plex Mono",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
      
                      Container(                  
                        margin: EdgeInsets.only(left:71 , top: 82),
                        child: Text(
                          "When:",
                          style: TextStyle(
                            color: Color.fromRGBO(88, 83, 83, 1),
                            fontFamily: "IBM Plex Mono",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
      
                      Container(                  
                        margin: EdgeInsets.only(left: 119, top: 82),
                        child: Text(
                          "November 7, 2023 (8:00 AM - 3:00 PM)",
                          style: TextStyle(
                            color: Color.fromRGBO(88, 83, 83, 1),
                            fontFamily: "IBM Plex Mono",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
      
                      Container(                  
                        margin: EdgeInsets.only(left:71, top: 117),
                        child: Text(
                          "Where:",
                          style: TextStyle(
                            color: Color.fromRGBO(88, 83, 83, 1),
                            fontFamily: "IBM Plex Mono",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
      
                      Container(                  
                        margin: EdgeInsets.only(left: 117, top: 117),
                        child: Text(
                          "Talisay City Hall",
                          style: TextStyle(
                            color: Color.fromRGBO(88, 83, 83, 1),
                            fontFamily: "IBM Plex Mono",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
      
                      Container(
                        height: 90,
                        width: 59,
                        margin: EdgeInsets.only(top: 54),
                        child: Image(
                          image: AssetImage("assets/redvline.png"),
                        ),
                      ),
      
                      Container(
                        height: 53,
                        width: 59,
                        margin: EdgeInsets.only(top: 140),
                        child: Image(
                          image: AssetImage("assets/official-profile.png"),
                        ),
                      ),
      
                      Container(                  
                        margin: EdgeInsets.only(left:60, top: 150),
                        child: Text(
                          "Talisay Mayor",
                          style: TextStyle(
                            color: Color.fromRGBO(88, 83, 83, 1),
                            fontFamily: "IBM Plex Mono",
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
      
                      Container(                  
                        margin: EdgeInsets.only(left:61, top: 167),
                        child: Text(
                          "2w",
                          style: TextStyle(
                            color: Color.fromRGBO(88, 83, 83, 1),
                            fontFamily: "IBM Plex Mono",
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
      
                      Container(                  
                        margin: EdgeInsets.only(left: 72, top: 187),
                        child: Text(
                          "Emergency Preparedness - Have a Plan, Stay Informed.",
                          style: TextStyle(
                            color: Color.fromRGBO(88, 83, 83, 1),
                            fontFamily: "IBM Plex Mono",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),

                      Container(
                        height: 20,
                        width: 400,
                        margin: EdgeInsets.only(top: 219),
                        child: Image(
                          image: AssetImage("assets/homepaged3.png"),
                        ),
                      ),

                      Container(
                        height: 53,
                        width: 59,
                        margin: EdgeInsets.only(top: 230),
                        child: Image(
                          image: AssetImage("assets/official-profile.png"),
                        ),
                      ),

                      Container(                  
                        margin: EdgeInsets.only(left:60, top: 240),
                        child: Text(
                          "Talisay Mayor",
                          style: TextStyle(
                            color: Color.fromRGBO(88, 83, 83, 1),
                            fontFamily: "IBM Plex Mono",
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),

                      Container(                  
                        margin: EdgeInsets.only(left:61, top: 257),
                        child: Text(
                          "3w",
                          style: TextStyle(
                            color: Color.fromRGBO(88, 83, 83, 1),
                            fontFamily: "IBM Plex Mono",
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),

                      Container(                  
                        margin: EdgeInsets.only(left: 72, top: 279),
                        child: Text(
                          "Roadblock Alert! Dumlog Street is under construction from 1:00 AM to 6:00 AM on October 27, 2023.",
                          style: TextStyle(
                            color: Color.fromRGBO(88, 83, 83, 1),
                            fontFamily: "IBM Plex Mono",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      
                    ]
                  ),
                ),
              ),

              Container(                  
                margin: EdgeInsets.only(left: 117, top: 440),
                child: Text(
                  "Announcements",
                  style: TextStyle(
                    color: Color.fromRGBO(88, 83, 83, 1),
                    fontFamily: "IBM Plex Mono",
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
                  
              Center(
                child: Container(
                  margin: EdgeInsets.only(bottom: 160),
                  height: 201,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1.0),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 120, 118, 118),
                        offset: new Offset(5.0, 5.0),
                        blurRadius: 5.0,
                      ),
                    ],
                  ),
                  child: CarouselSlider.builder(
                    slideTransform: CubeTransform(),
                    slideIndicator: CircularSlideIndicator(
                      padding: EdgeInsets.all(10),
                      currentIndicatorColor: Colors.white,
                    ),
                    slideBuilder: (int index) {
                      final controller = videos[index];
                      controller.pause();
                      return GestureDetector(
                        onTap: () {
                          if (controller.value.isPlaying) {
                            controller.pause();
                          } else {
                            controller.play();
                          }
                        },
                        child: VideoPlayer(controller),
                      );
                    },
                    itemCount: videos.length,
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

              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Homepage())),
                child: Container(
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.only(left: 22, top: 90),
                  child: Image(
                    image: AssetImage("assets/rotate.png"),              
                  ),
                ),
              ),

              GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Homepage())),
                child: Container(              
                    margin: EdgeInsets.only(left: 25, top: 130),
                    child: Text(
                      "Refresh",
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
      ),
    );
  }
}




