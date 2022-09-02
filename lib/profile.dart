import 'package:flutter/material.dart';
import 'package:myapp/otp.dart';
import 'package:myapp/src/app.dart';
import '../src/Screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'main2.dart';

class app5 extends StatelessWidget {
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
      home: Lang4(),
    );
  }
}

class Lang4 extends StatefulWidget {
  _Lang4State createState() => _Lang4State();
}

class _Lang4State extends State<Lang4> {
  String _email = '', _password = '';
  final auth = FirebaseAuth.instance;
  bool? value = false;
  bool? value2 = false;

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
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0, 100, 10, 0),
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  child: Text(
                    "Please Select Your Profile",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(15),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff000000))),
                    width: 328,
                    height: 89,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Checkbox(
                            value: this.value,
                            shape: CircleBorder(),
                            onChanged: (bool? value) {
                              setState(() {
                                this.value = value;
                              });
                            },
                          ),
                        ),
                        Container(
                            width: 60,
                            height: 60,
                            child: Icon(
                              Icons.home_work_outlined,
                              size: 40,
                            )),
                        Container(
                          width: 200,
                          height: 60,
                          child: Column(
                            children: [
                              Container(
                                width: 200,
                                child: Text(
                                  "Shipper",
                                  style: TextStyle(fontSize: 19),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Lorem ipsum dolor sit amet,consectetur adipiscing",
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.all(15),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff000000))),
                    width: 328,
                    height: 89,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Checkbox(
                            value: this.value2,
                            shape: CircleBorder(),
                            onChanged: (bool? value2) {
                              setState(() {
                                this.value2 = value2;
                              });
                            },
                          ),
                        ),
                        Container(
                            width: 60,
                            height: 60,
                            child: Icon(
                              Icons.local_shipping_outlined,
                              size: 40,
                            )),
                        Container(
                          width: 200,
                          height: 60,
                          child: Column(
                            children: [
                              Container(
                                width: 200,
                                child: Text(
                                  "Transporter",
                                  style: TextStyle(fontSize: 19),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Lorem ipsum dolor sit amet,consectetur adipiscing",
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                            ],
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
                    onPressed: () => {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) => app2()))
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
