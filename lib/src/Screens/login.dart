import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'home.dart';

class Loginscreen extends StatefulWidget {
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  String _email = '', _password = '';
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Email',
              ),
              onChanged: (value) {
                setState(() {
                  _email = value.trim();
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'password',
              ),
              onChanged: (value) {
                setState(() {
                  _password = value.trim();
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RaisedButton(
                  color: Colors.yellow,
                  child: Text('sign-in'),
                  onPressed: () {
                    auth.signInWithEmailAndPassword(email: _email, password: _password);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Homescreen()));
                  }),
              RaisedButton(
                color: Colors.green,
                child: Text('sign-up'),
                onPressed: () {
                  auth.createUserWithEmailAndPassword(email: _email, password: _password);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
