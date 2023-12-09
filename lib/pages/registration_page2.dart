  // ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors, annotate_overrides, no_logic_in_create_state, prefer_relative_imports

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lifeline_assistance/pages/login_email.dart';
import 'package:lifeline_assistance/pages/registration_page.dart';

class RegistrationPage2 extends StatefulWidget {
  final TextEditingController firstnameController;
  final TextEditingController lastnameController;
  final TextEditingController emailController;
  final String? gender;
  final DateTime selectedDate;
  final TextEditingController numberController;
  final TextEditingController passwordController;
  final TextEditingController addressController;
  final TextEditingController occupationController;
  final String? selectedBloodType;
  
  const RegistrationPage2({
    Key? key, 
    required this.emailController, 
    required this.passwordController, 
    required this.firstnameController, 
    required this.lastnameController, 
    required this.gender, 
    required this.selectedDate, 
    required this.numberController, 
    required this.addressController, 
    required this.occupationController, 
    required this.selectedBloodType}) : super(key: key);

  @override
  State<RegistrationPage2> createState() => _RegistrationPage2State();
}

class _RegistrationPage2State extends State<RegistrationPage2> {
  //User's trusted person
  final _firstnameController = TextEditingController();
  final _middlenameController = TextEditingController();
  final _lastnameController = TextEditingController();
  final _numberController = TextEditingController();
  final _relationController = TextEditingController();

  //User details
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController firstnameController;
  late TextEditingController lastnameController;
  late String? gender;
  late DateTime selectedDate;
  late TextEditingController numberController;
  late TextEditingController addressController;
  late TextEditingController occupationController;
  late String? selectedBloodType;
  bool isChecked = false;

  @override
  void initState() {
    super.initState();
    emailController = widget.emailController;
    passwordController = widget.passwordController;
    firstnameController = widget.firstnameController;
    lastnameController = widget.lastnameController;
    gender = widget.gender;
    selectedDate = widget.selectedDate;
    numberController = widget.numberController;
    addressController = widget.addressController;
    occupationController = widget.occupationController;
    selectedBloodType = widget.selectedBloodType;
  }

  @override
  void dispose() {
    //User's trusted person
    _firstnameController.dispose();
    _middlenameController.dispose();
    _lastnameController.dispose();
    _numberController.dispose();
    _relationController.dispose();

    //User
    firstnameController.dispose();
    lastnameController.dispose();
    emailController.dispose();
    numberController.dispose();
    passwordController.dispose();
    addressController.dispose();
    occupationController.dispose();
    super.dispose();
  }

  Future signUp() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
  );

  String formattedDate = selectedDate.toLocal().toString();

    addUserDetails(
      //User details
      firstnameController.text.trim(), 
      lastnameController.text.trim(), 
      emailController.text.trim(), 
      gender!, 
      formattedDate, 
      int.parse(numberController.text.trim()), 
      passwordController.text.trim(), 
      addressController.text.trim(), 
      occupationController.text.trim(), 
      selectedBloodType as String,
      
      //User's trusted person
      _firstnameController.text.trim(),
      _middlenameController.text.trim(),
      _lastnameController.text.trim(),
      int.parse(_numberController.text.trim()),
      _relationController.text.trim()
      );

}

  Future addUserDetails(String firstname, String lastname, String email, String gender, String dateofbirth, int number, String password, String address, String occupation, String bloodtype, String trustedfn, String trustedmn, String trustedln, int trustednum, String trustedrel) async{
  await FirebaseFirestore.instance.collection("users").add({
    //User details
    "firstname": firstname,
    "lastname": lastname,
    "email": email,
    "gender": gender,
    "dateofbirth": dateofbirth,
    "number": number,
    "password": password,
    "address": address,
    "occupation": occupation,
    "bloodtype": bloodtype,

    //User's trusted details
    "trustedfn": trustedfn,
    "trustedmn": trustedmn,
    "trustedln": trustedln,
    "trustednum": trustednum,
    "trustedrel": trustedrel
  });
}

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
                margin: EdgeInsets.only(top: 860),
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
                width: 251,
                margin: EdgeInsets.only(left: 75, top: 290),
                child: Text(
                  "In Case of Emergency Please Notify:",
                  style: TextStyle(
                    color: Color.fromRGBO(88, 83, 83, 1),
                    fontFamily: "IBM Plex Mono",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 40, top: 340),
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
                margin: EdgeInsets.only(left: 40, top: 370),
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  controller: _firstnameController,
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
                margin: EdgeInsets.only(left: 40, top: 430),
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
                margin: EdgeInsets.only(left: 40, top: 460),
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  controller: _middlenameController,
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
                margin: EdgeInsets.only(left: 40, top: 520),
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
                margin: EdgeInsets.only(left: 40, top: 550),
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  controller: _lastnameController,
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
                margin: EdgeInsets.only(left: 40, top: 610),
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
                margin: EdgeInsets.only(left: 40, top: 640),
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
                margin: EdgeInsets.only(left: 40, top: 700),
                child: Text(
                  "Relation:",
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
                margin: EdgeInsets.only(left: 40, top: 730),
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  controller: _relationController,
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
                margin: EdgeInsets.only(left: 50, top: 790),
                width: 117,
                height: 38,
                child: ElevatedButton(                  
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>RegistrationPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: const Color.fromRGBO(191, 27, 27, 1), 
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
                margin: EdgeInsets.only(left: 190, top: 790),
                width: 117,
                height: 38,
                child: ElevatedButton(
                  onPressed: () {
                    if (isChecked) {                      
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(
                              "Registration Successful",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                            content: Text("Your account has been registered!"),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  signUp();
                                  Navigator.of(context).pop(); 
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPageEmail()));
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
                    }  
                    else {                      
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(
                              "Terms and Conditions",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                              ),
                            content: Text("You must agree to the Terms and Conditions to proceed."),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop(); // Close the dialog
                                },
                                child: Text(
                                  "OK",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: const Color.fromRGBO(191, 27, 27, 1),
                    padding: EdgeInsets.all(5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Text(
                    "Register",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),


              Container(
                margin: EdgeInsets.only(left: 95, top: 870),
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Checkbox(
                  value: isChecked,
                  side: BorderSide(color: Colors.black),
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value ?? false;
                    });
                  },
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 125, top: 860),
                width: 180,
                child: Text(
                  "I have agreed to the",
                  style: TextStyle(
                    color: Color.fromRGBO(88, 83, 83, 1),
                    fontFamily: "IBM Plex Mono",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 124, top: 878),
                width: 180,
                child: Text(
                  "Terms and Conditions",
                  style: TextStyle(
                    color: Color.fromRGBO(191, 27, 27, 1),
                    fontFamily: "IBM Plex Mono",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
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
