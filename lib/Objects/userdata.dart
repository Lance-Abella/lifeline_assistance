import 'package:cloud_firestore/cloud_firestore.dart';

class UserProfile {
  String firstname;
  String lastname;
  int number = 0;
  String occupation = "";
  String address = "";
  // Add other fields as needed

  UserProfile({
    required this.firstname,
    required this.lastname,
    required this.number,
    required this.occupation,
    required this.address,


    // Initialize other fields
  });
}