// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unused_element, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lifeline_assistance/pages/login_page.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  String? gender;
  DateTime selectedDate = DateTime.now();
  bool _obscureText = true;
  String? selectedBloodType;

  Future<void> _selectDate(BuildContext context) async {
  DateTime currentDate = selectedDate;

  DateTime? picked = await showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          "Select Date of Birth",
          style: TextStyle(
            color: Color.fromRGBO(88, 83, 83, 1),
          ),
          ),
        backgroundColor: Colors.white,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 200,
              color: Colors.white,
              child: Theme(
                data: ThemeData.light().copyWith(
                  primaryColor: Colors.white, 
                ),
                child: CalendarDatePicker(
                  initialDate: currentDate,
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                  onDateChanged: (date) {
                    currentDate = date;
                  },
                ),
              ),
            ),
            ElevatedButton(              
              onPressed: () {
                Navigator.of(context).pop(currentDate);
              },
              child: Text(
                "OK",
                style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              ),
            ),
          ],
        ),
      );
    },
  );

  if (picked != null) {
    setState(() {
      selectedDate = picked;
    });
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: 3000,
        width: 400,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(left: 135),
                child: Image(
                  image: AssetImage("assets/logind1.png"),
                ),
              ),
        
              Container(
                margin: EdgeInsets.only(left: 22, top: 180),
                child: Image(
                  image: AssetImage("assets/logind2.png"),
                ),
              ),

              Container(
                width: 180,
              margin: EdgeInsets.only(top: 1050),              
              child: Image(
                image: AssetImage("assets/logind3.png"),
              ),
            ),
        
              Container(
                margin: EdgeInsets.only(left: 140, top: 220),
                child: Text(
                  "REGISTRATION",
                  style: TextStyle(
                    color: Color.fromRGBO(88, 83, 83, 1),
                    fontFamily: "IBM Plex Mono",
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
        
              Container(
                margin: EdgeInsets.only(left: 40, top: 310),
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
                margin: EdgeInsets.only(left: 40, top: 340),
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
                margin: EdgeInsets.only(left: 40, top: 400),
                child: Text(
                  "Middle Name:",
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
                margin: EdgeInsets.only(left: 40, top: 430),
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
                margin: EdgeInsets.only(left: 40, top: 490),
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
                margin: EdgeInsets.only(left: 40, top: 520),
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

              Container(
                margin: EdgeInsets.only(left: 200, top: 580),
                child: Text(
                  "Date of Birth:",
                  style: TextStyle(
                    color: Color.fromRGBO(88, 83, 83, 1),
                    fontFamily: "IBM Plex Mono",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),

              Container(
                color: Colors.white,
                margin: EdgeInsets.only(left: 200, top: 610),
                child: ElevatedButton(
                  onPressed: () => _selectDate(context),
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(220, 219, 219, 1)),
                  side: MaterialStateProperty.all<BorderSide>(
                  BorderSide(
                    color: Colors.black, 
                    width: 1.0, 
                  ),
                ),  
                ),
                  child: Text(
                    "${selectedDate.toLocal()}".split(' ')[0],
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 40, top: 690),
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
              margin: EdgeInsets.only(left: 40, top: 720),
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                ),
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
                margin: EdgeInsets.only(left: 40, top: 780),
                child: Text(
                  "Password:",
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
              margin: EdgeInsets.only(left: 40, top: 810),
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                ),
                obscureText: _obscureText,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                    ),
                    color: Colors.black,
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
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
                margin: EdgeInsets.only(left: 40, top: 870),
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
                margin: EdgeInsets.only(left: 40, top: 900),
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
                margin: EdgeInsets.only(left: 40, top: 960),
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
                margin: EdgeInsets.only(left: 40, top: 990),
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
                margin: EdgeInsets.only(left: 200, top: 960),
                child: Text(
                  "Blood Type:",
                  style: TextStyle(
                    color: Color.fromRGBO(88, 83, 83, 1),
                    fontFamily: "IBM Plex Mono",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),

                Container(
                  margin: EdgeInsets.only(left: 190, top: 990),
                  height: 41,
                  width: 120,
                  alignment: Alignment.centerRight,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1.0),
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromRGBO(217, 217, 217, 1),
                  ),
                  child:Container(
                    padding: EdgeInsets.zero,
                    child: DropdownButton<String>(
                      alignment:AlignmentDirectional.topCenter,
                      value: selectedBloodType,                    
                      dropdownColor: Colors.white,
                      icon: Icon(Icons.arrow_drop_down, color: Colors.black,),
                      iconSize: 24,
                      elevation: 0,
                      itemHeight: 48,
                      
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedBloodType = newValue;
                        });
                      },
                      items: <String>[
                        'A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-', 'Other'
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          alignment:AlignmentDirectional.centerEnd,
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        );
                      }).toList(),
                      underline: Container( 
                      height: 0,
                    ),
                    ),
                  ),
                ),


              Container(
                margin: EdgeInsets.only(left: 50, top: 1050),
                width: 117,
                height: 38,
                child: ElevatedButton(
                  
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>LoginPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(191, 27, 27, 1), 
                    onPrimary: Colors.white, 
                    padding: EdgeInsets.all(5), 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5), 
                    ),
                  ),
                  child: Text(
                    "Back",
                    style: TextStyle(
                      fontSize: 16,                    
                    ),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 190, top: 1050),
                width: 117,
                height: 38,
                child: ElevatedButton(
                  
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>RegistrationPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(191, 27, 27, 1), 
                    onPrimary: Colors.white, 
                    padding: EdgeInsets.all(5), 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5), 
                    ),
                  ),
                  child: Text(
                    "Next",
                    style: TextStyle(
                      fontSize: 16,                    
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