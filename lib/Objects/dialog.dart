// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, no_leading_underscores_for_local_identifiers, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyDialog extends StatefulWidget {
  final Function(String, String, Timestamp, String, int, String, String, String) onUpdate;
  final String initialFirstName;
  final String initialLastName;
  final int initialNumber;
  final String initialOccupation;
  final String initialAddress;

  MyDialog({
    required this.onUpdate, 
    required this.initialFirstName, 
    required this.initialLastName, 
    required this.initialNumber, 
    required this.initialOccupation, 
    required this.initialAddress, 
    });

  static Future<void> showPostDialog(
    BuildContext context, 
    Function(String, String, int, String, String) onUpdateCallback, 
    {
    required String initialFirstName,
    required String initialLastName,
    required int initialNumber, 
    required String initialOccupation,
    required String initialAddress,
    }) async {
    TextEditingController _firstnameController = TextEditingController(text: initialFirstName);
    TextEditingController _lastnameController = TextEditingController(text: initialLastName);
    TextEditingController _numberController = TextEditingController(text: initialNumber.toString());
    TextEditingController _occupationController = TextEditingController(text: initialOccupation);
    TextEditingController _addressController = TextEditingController(text: initialAddress);

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Text(
            'Edit profile',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w900,
            ),
          ),
          content: ListView(
            children: [

              Container(
                margin: EdgeInsets.only(top: 20),
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
                child: TextField(
                  controller: _firstnameController,
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
                margin: EdgeInsets.only(top: 20),
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
                child: TextField(
                  controller: _lastnameController,
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
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "Contact Number:",
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
              // margin: EdgeInsets.only(left: 40, top: 720),
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                ),
                controller: _numberController, 
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ],
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
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "Occupation:",
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
                width: 120,
                // margin: EdgeInsets.only(left: 40, top: 990),
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                  ), 
                  controller: _occupationController,                  
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
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    "Address:",
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
                // margin: EdgeInsets.only(left: 40, top: 900),
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  controller: _addressController,  
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
            
              
            ],
          ),

          actions: <Widget>[
            Container(
              height: 45,
              width: 110,
              decoration: BoxDecoration(
                // color: const Color.fromRGBO(88, 83, 83, 1),
                color: Color.fromRGBO(191, 27, 27, 1),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              padding: EdgeInsets.all(2),
              child: TextButton(
                child: Center(
                  child: Text(
                    'Save changes',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                onPressed: () {
                  String newFirstName = _firstnameController.text;
                  String newLastName = _lastnameController.text;
                  int newNumber = int.parse(_numberController.text.trim());
                  String newOccupation = _occupationController.text;
                  String newAddress = _addressController.text;

                  // Use widget.onUpdate to access the method from the parent widget
                  onUpdateCallback(
                    newFirstName, 
                    newLastName, 
                    newNumber,
                    newOccupation, 
                    newAddress,  );                
                  Navigator.of(context).pop();
                },
              ),
            ),
            Container(
              height: 45,
              width: 84,
              decoration: BoxDecoration(
                // color: const Color.fromRGBO(88, 83, 83, 1),
                color: Color.fromRGBO(191, 27, 27, 1),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
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

  @override
  State<StatefulWidget> createState() {
    return _MyDialogState();
  }
}

class _MyDialogState extends State<MyDialog> {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Implement build method if needed
    throw UnimplementedError();
  }
}
