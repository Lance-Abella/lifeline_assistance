// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, no_leading_underscores_for_local_identifiers, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class MyDialog extends StatefulWidget {
  final Function(String, String) onUpdate;

  MyDialog({required this.onUpdate});

  static Future<void> showPostDialog(BuildContext context, Function(String, String) onUpdateCallback) async {
    TextEditingController _firstnameController = TextEditingController();
    TextEditingController _lastnameController = TextEditingController();

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
            ],
          ),
          actions: <Widget>[
            Container(
              height: 45,
              width: 84,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(88, 83, 83, 1),
                borderRadius: BorderRadius.all(Radius.circular(5)),
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
                  String newFirstName = _firstnameController.text;
                  String newLastName = _lastnameController.text;
                  // Use widget.onUpdate to access the method from the parent widget
                  onUpdateCallback(newFirstName, newLastName);                
                  Navigator.of(context).pop();
                },
              ),
            ),
            Container(
              height: 45,
              width: 84,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(88, 83, 83, 1),
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
  Widget build(BuildContext context) {
    // Implement build method if needed
    throw UnimplementedError();
  }
}
