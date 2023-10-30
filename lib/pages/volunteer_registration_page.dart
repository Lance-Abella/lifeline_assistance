// ignore_for_file: prefer_const_constructors, avoid_print, deprecated_member_use

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:lifeline_assistance/pages/home_page.dart';

class VolunteerRegistration extends StatelessWidget {
  const VolunteerRegistration({super.key});

  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.any, 
    );

    if (result != null) {
      PlatformFile file = result.files.first;

      print('File Name: ${file.name}');
      print('File Byte Size: ${file.size}');
      print('File Path: ${file.path}');
      print('File Extension: ${file.extension}');
    }
  }

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
                margin: EdgeInsets.only(left: 35, top: 220),
                child: Text(
                  "Certificates:",
                  style: TextStyle(
                    color: Color.fromRGBO(88, 83, 83, 1),
                    fontFamily: "IBM Plex Mono",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 130, top: 221),
                child: Text(
                  "Kindly attach your certificate(s)",
                  style: TextStyle(
                    color: Color.fromRGBO(88, 83, 83, 1),
                    fontFamily: "IBM Plex Mono",
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 130, top: 240),
                child: Text(
                  "below",
                  style: TextStyle(
                    color: Color.fromRGBO(88, 83, 83, 1),
                    fontFamily: "IBM Plex Mono",
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 100, top: 290),
                child: ElevatedButton(
                  onPressed: _pickFile,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(88, 83, 83, 0.1)), 
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0), 
                        side: BorderSide(color: Colors.black, width: 1.0), 
                      ),
                    ),
                  ),
                  child: Text('Attach Certificate(s)'),
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 122, top: 360),
                width: 117,
                height: 38,
                child: ElevatedButton(
                  onPressed: () {                                         
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(
                              "Registration Pending",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                            content: Text("Thank you for applying as a volunteer! Your submitted certificate(s) will undergo review by the administration team, and the process is expected to take approximately 3-5 working days. You will be notified via text message once your application has been verified. We appreciate your patience."),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop(); 
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => VolunteerRegistration()));
                                },
                                child: Text(
                                  "OK",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );                                          
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: const Color.fromRGBO(191, 27, 27, 1),
                    padding: EdgeInsets.all(5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      fontSize: 16,
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

              Container(
              height: 41,
              width: 41,
              margin: EdgeInsets.only(left: 81, top: 687),
              child: Image(
                image: AssetImage("assets/chatbtn.png"),
                fit: BoxFit.cover,
              ),
            ),

            Container(
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

            Container(
              height: 80,
              width: 80,
              margin: EdgeInsets.only(left: 144, top: 670),
              child: Image(
                image: AssetImage("assets/homepaged9.png"),
                fit: BoxFit.cover,
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