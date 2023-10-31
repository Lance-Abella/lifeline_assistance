// ignore_for_file: prefer_const_constructors, unused_field, prefer_collection_literals

import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lifeline_assistance/pages/bulletin_page.dart';
import 'package:lifeline_assistance/pages/registered_volunteers_page.dart';
import 'package:lifeline_assistance/pages/volunteer_registration_page.dart';

class CallPage extends StatefulWidget {
  const CallPage({super.key});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  GoogleMapController? _controller;
  
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

            Container(
              margin: EdgeInsets.only(left: 20, top: 450),
              height: 200, // Adjust the height as needed
              width: 360, // Adjust the width as needed
              child: GoogleMap(
                onMapCreated: (controller) {
                  setState(() {
                    _controller = controller;
                  });
                },
                initialCameraPosition: CameraPosition(
                  target: LatLng(10.3157, 123.8854), // Adjust the initial map coordinates
                  zoom: 15, // You can adjust the initial zoom level
                ),
                markers: Set<Marker>.from([
                  Marker(
                    markerId: MarkerId('marker_1'), // Change this for different markers
                    position: LatLng(10.3157, 123.8854), // Adjust the marker coordinates
                    infoWindow: InfoWindow(title: 'Marker Title'),
                  ),
                  // Add more markers if needed
                ]),
              ),
            ),            

            Container(
                margin: EdgeInsets.only(left: 135, top: 400),
                child: Text(
                  "Contacts",
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
              margin: EdgeInsets.only(top: 430),
              child: Image(
                image: AssetImage("assets/homepaged3.png"),
              ),
            ),

            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>VolunteerRegistration())),
              child: Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.only(left: 50, top: 450),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image(
                    image: AssetImage("assets/homepaged4.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>VolunteerRegistration())),
              child: Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.only(left: 50, top: 450),
                child: Image(
                  image: AssetImage("assets/homepaged5.png"),
                ),
              ),
            ),

            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>VolunteerRegistration())),
              child: Container(
                  margin: EdgeInsets.only(left: 120, top: 465),
                  child: Text(
                    "Be A Volunteer",
                    style: TextStyle(
                      color: Color.fromRGBO(88, 83, 83, 1),
                      fontFamily: "IBM Plex Mono",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
            ),

            Container(
              height: 20,
              width: 400,
              margin: EdgeInsets.only(top: 500),
              child: Image(
                image: AssetImage("assets/homepaged3.png"),
              ),
            ),

            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>RegisteredVolunteers())),
              child: Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.only(left: 50, top: 520),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image(
                    image: AssetImage("assets/homepaged4.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>RegisteredVolunteers())),
              child: Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.only(left: 50, top: 520),
                child: Image(
                  image: AssetImage("assets/homepaged6.png"),
                ),
              ),
            ),

            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>RegisteredVolunteers())),
              child: Container(
                  margin: EdgeInsets.only(left: 120, top: 535),
                  child: Text(
                    "Registered Volunteers",
                    style: TextStyle(
                      color: Color.fromRGBO(88, 83, 83, 1),
                      fontFamily: "IBM Plex Mono",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
            ),

            Container(
              height: 20,
              width: 400,
              margin: EdgeInsets.only(top: 570),
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

            Container(
              height: 43,
              width: 43,
              margin: EdgeInsets.only(left: 244, top: 687),
              child: Image(
                image: AssetImage("assets/settingsbtn.png"),
                fit: BoxFit.cover,
              ),
            ),

            Container(
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

            Container(
              height: 43,
              width: 43,
              margin: EdgeInsets.only(left: 305, top: 687),
              child: Image(
                image: AssetImage("assets/personbtn.png"),
                fit: BoxFit.cover,
              ),
            ),

            Container(
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
          ],
        ),
      ),
    );
  }
}