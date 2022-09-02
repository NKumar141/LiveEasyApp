import 'package:flutter/material.dart';
import '../src/Screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';

class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'login app',
      theme: ThemeData(
        accentColor: Colors.orange,
        primarySwatch: Colors.blue,
      ),
      home: Loginscreen(),
    );
  }
}
