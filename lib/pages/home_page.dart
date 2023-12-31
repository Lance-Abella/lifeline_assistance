// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, no_logic_in_create_state, library_private_types_in_public_api, unnecessary_new, sized_box_for_whitespace, prefer_relative_imports

import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:lifeline_assistance/Objects/announcements.dart';
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
  bool showText = true;
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

  Map<String, dynamic> announcement={
    "profile": ["assets/official-profile.png", "assets/official-profile.png", "assets/official-profile.png"],
    "name": ["Talisay SK Chairman", "Talisay City Mayor", "Talisay City Mayor"],
    "message": ["What: Job Fair 2023: Connecting Job Seekers with Opportunities. When: November 7, 2023 (8:00 AM - 3:00 PM) Where: Talisay City Hall", "Emergency Preparedness: Have a Plan, Stay Informed.", "Roadblock Alert! Dumlog Street is under construction from 1:00 AM to 6:00 AM on October 27, 2023."]
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
                  margin: EdgeInsets.only(left: 130, top: 170),
                  child: Text(
                    "Weekly Tips",
                    style: TextStyle(
                      color: Color.fromRGBO(88, 83, 83, 1),
                      fontFamily: "IBM Plex Mono",
                      fontSize: 17,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),

              Container(
                margin: EdgeInsets.only(top: 470),
                height: 206,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: announcement["profile"].length,
                  itemBuilder: (context, index){
                    return Announcements(
                      profile: announcement["profile"][index], 
                      name: announcement["name"][index], 
                      message: announcement["message"][index],
                      );

                }),
              ), 

              Container(                  
                margin: EdgeInsets.only(left: 117, top: 440),
                child: Text(
                  "Announcements",
                  style: TextStyle(
                    color: Color.fromRGBO(88, 83, 83, 1),
                    fontFamily: "IBM Plex Mono",
                    fontSize: 17,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
                  
              Center(
                child: Container(
                  margin: EdgeInsets.only(bottom: 145),
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
                  onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) =>BulletinPage())),                                          
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
            ],
          ),
        ),
      ),
    );
  }
}




