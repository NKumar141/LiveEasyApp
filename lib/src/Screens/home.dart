import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login.dart';

class Homescreen extends StatelessWidget {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: FlatButton(
              child: Text('LogOut'),
              onPressed: () {
                auth.signOut();
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Loginscreen()));
              })),
    );
  }
}
