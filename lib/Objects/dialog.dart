// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_unnecessary_containers, sized_box_for_whitespace, use_key_in_widget_constructors, no_leading_underscores_for_local_identifiers, no_logic_in_create_state

import 'package:flutter/material.dart';

class MyDialog extends StatefulWidget{
  static get gender => null;

  static Future<void> showPostDialog(BuildContext context) async {
    String userInput = '';
    String? gender;
    DateTime selectedDate = DateTime.now();
    bool _obscureText = true;
    String? selectedBloodType;

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Text(
            'Edit profile',
            style:TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w900,
            ),
          ),
          // content: TextField(
          //   onChanged: (text) {
          //     userInput = text;
          //   },
          // ),
          content: ListView(
            children: [
              Container(
                // margin: EdgeInsets.only(left: 40, top: 310),
                child: Text(
                  "First Name:",
                  style: TextStyle(
                    color: Color.fromRGBO(88, 83, 83, 1),
                    fontFamily: "IBM Plex Mono",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
        
              Container(
                height: 41,
                width: 280,
                // margin: EdgeInsets.only(left: 40, top: 340),
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                  ),                
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    filled: true,
                    fillColor: Color.fromRGBO(226, 225, 225, 1),
                  ),
                ),
              ),

              Container(
                // margin: EdgeInsets.only(left: 40, top: 490),
                child: Text(
                  "Last Name:",
                  style: TextStyle(
                    color: Color.fromRGBO(88, 83, 83, 1),
                    fontFamily: "IBM Plex Mono",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),

              Container(
                height: 41,
                width: 280,
                // margin: EdgeInsets.only(left: 40, top: 520),
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                  ),                 
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    filled: true,
                    fillColor: Color.fromRGBO(226, 225, 225, 1),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 40, top: 580),
                child: Text(
                  "Gender:",
                  style: TextStyle(
                    color: Color.fromRGBO(88, 83, 83, 1),
                    fontFamily: "IBM Plex Mono",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 30, top: 600),
                child: RadioListTile(
                  selected: false,
                  fillColor: MaterialStateProperty.all(const Color.fromRGBO(0, 0, 0, 0.6)),
                  title: Text(
                    "Male",
                    style: TextStyle(
                      color: const Color.fromRGBO(88, 83, 83, 1),
                      fontSize: 16,
                      fontFamily: "IBM Plex Mono",
                      fontWeight: FontWeight.w400,
                      ),
                      ),
                  value: "Male",
                  groupValue: gender,
                  activeColor: Colors.black,
                  onChanged: (value) {
                    setState(() {
                      gender = value!;
                    });
                  },
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 30, top: 630),
                child: RadioListTile(
                  selected: false,
                  fillColor: MaterialStateProperty.all(const Color.fromRGBO(0, 0, 0, 0.6)),
                  title: Text(
                    "Female",
                    style: TextStyle(
                      color: const Color.fromRGBO(88, 83, 83, 1),
                      fontSize: 16,
                      fontFamily: "IBM Plex Mono",
                      fontWeight: FontWeight.w400,
                      ),
                      ),
                  value: "Female",
                  groupValue: gender,
                  activeColor: Colors.black,
                  onChanged: (value) {
                    setState(() {
                      gender = value!;
                    });
                  },
                ),
              ),


            ]),






          actions: <Widget>[
            Container(
              height: 45,
              width: 84,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(88, 83, 83, 1),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
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
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              padding: EdgeInsets.all(5),
              child: TextButton(
                child: Text(
                  'Cancel',
                  style: TextStyle(color: Colors.white),
                ),
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
  
  static void setState(Null Function() param0) {}
  
  @override
  State<StatefulWidget> createState() {
    
    throw UnimplementedError();
  }
}
