import 'package:flutter/material.dart';
import 'package:myapp/otp.dart';
import '../src/Screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'main2.dart';
import 'profile.dart';

class app3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'login app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffffffff),
        accentColor: Colors.orange,
        primarySwatch: Colors.blue,
      ),
      home: Lang2(),
    );
  }
}

class Lang2 extends StatefulWidget {
  _Lang2State createState() => _Lang2State();
}

class _Lang2State extends State<Lang2> {
  String _email = '', _password = '';
  TextEditingController _controller = TextEditingController();
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              bottom: 0.0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: Image.asset(
                  'assets/images/Untitled2.png',
                  fit: BoxFit.fill,
                ),
              )),
          Positioned(
            top: 0.0,
            child: Padding(
              padding: EdgeInsets.fromLTRB(7, 7, 0, 0),
              child: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => app2()));
                },
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 100, 10, 0),
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  child: Text(
                    "Please enter your mobile number",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Container(
                  height: 42,
                  width: 185,
                  alignment: Alignment.center,
                  child: Text(
                    "You’ll receive a 4 digit code to verify next.",
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(15),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff000000))),
                    width: 320,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Image.asset(
                            "assets/images/flag.png",
                            height: 30,
                            width: 30,
                          ),
                        ),
                        Container(
                          child: Text(
                            "+91",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: Text(
                            "-",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 30,
                          child: TextField(
                            obscureText: false,
                            keyboardType: TextInputType.number,
                            controller: _controller,
                            decoration: InputDecoration(
                              hintText: 'Mobile Number',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 48,
                width: 320,
                child: ElevatedButton(
                    child: Text("CONTINUE", style: TextStyle(fontSize: 20)),
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xff465998)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero,
                                    side:
                                        BorderSide(color: Color(0xff465998))))),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => Lang3(_controller.text)));
                    }),
              ),
              Container(),
            ],
          ),
        ],
      ),
    );
  }
}
