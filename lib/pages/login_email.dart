// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, use_key_in_widget_constructors, must_be_immutable, library_private_types_in_public_api, prefer_final_fields, use_build_context_synchronously, prefer_relative_imports

import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "package:lifeline_assistance/pages/registration_page.dart";

import "call_page.dart";

class LoginPageEmail extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPageEmail> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _obscureText = true;

Future <void> signIn() async {
  try {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

     await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    Navigator.of(context).push(MaterialPageRoute(builder: (context) => CallPage()));

  } on FirebaseAuthException catch (e) {
      String errorMessage = 'Login failed';
      switch (e.code) {
        case 'user-not-found':
          errorMessage = 'No user found with this email.';
          break;
        case 'wrong-password':
          errorMessage = 'Invalid password.';
          break;
        default:
          errorMessage = 'Login failed please try again!';
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Center(
            child: Text(
              errorMessage,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          duration: Duration(seconds: 3),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      );
    } 
  }
  
  @override
  void dispose(){
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: 800,
        width: 400,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(left:200),
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
              margin: EdgeInsets.only(left: 148, top: 215),
              child: Text(
                "LOG IN",
                style: TextStyle(
                  color: Color.fromRGBO(88, 83, 83, 1),
                  fontFamily: "IBM Plex Mono",
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),

            Container(
              height: 50,
              width: 290,
              margin: EdgeInsets.only(left: 39, top: 320),
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                ),
                controller: emailController,                 
                decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  filled: true,
                  fillColor: Color.fromRGBO(245, 243, 243, 1),
                ),
              ),
            ),

            Container(
              height: 50,
              width: 290,
              margin: EdgeInsets.only(left: 39, top: 390),
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                ),
                obscureText: _obscureText,
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
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
                  fillColor: Color.fromRGBO(245, 243, 243, 1),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 200, top: 450),
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  color: Color.fromRGBO(88, 83, 83, 1),
                  fontFamily: "IBM Plex Mono",
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            GestureDetector(
              onTap: (){
                signIn();
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Homepage()));
                },
              child: Container(
                margin: EdgeInsets.only(left: 39, top: 500),
                width: 290,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(191, 27, 27, 1),
                  borderRadius: BorderRadius.circular(5), 
                ),
                child: Center(
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: "IBM Plex Mono",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 80, top: 590),
              child: Text(
                "Don't have an account?",
                style: TextStyle(
                  color: Color.fromRGBO(88, 83, 83, 1),
                  fontFamily: "IBM Plex Mono",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) =>RegistrationPage())),
              child: Container(                
                margin: EdgeInsets.only(left: 110, top: 620),
                height: 30,
                child: Text(
                  "Create an account",
                  style: TextStyle(
                    color: Color.fromRGBO(88, 83, 83, 1),
                    fontFamily: "IBM Plex Mono",
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(right: 100, top: 600),              
              child: Image(
                image: AssetImage("assets/logind3.png"),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
