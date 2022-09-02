import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../src/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../main2.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyCb8auOmmZ4uxHqePfT39FUfybUOGwZR40',
      appId:
          '1068698477227-sbhucgdhr46dad14ql7rhdfh2n3uih4r.apps.googleusercontent.com',
      messagingSenderId: 'com.maxeff.myapp',
      projectId: 'login-8140b',
    ),
  );
  runApp(app2());
}
