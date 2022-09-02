import 'package:flutter/material.dart';
import 'package:myapp/phone.dart';
import '../src/Screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';

class app2 extends StatelessWidget {
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
      home: Lang(),
    );
  }
}

class Lang extends StatefulWidget {
  _LangState createState() => _LangState();
}

//Center(
//        child: FlatButton(
//          child: Text('LogOut'),
//        onPressed: () {
//        auth.signOut();
//      Navigator.of(context).pushReplacement(
//        MaterialPageRoute(builder: (context) => Loginscreen()));
//}))
//
//

class _LangState extends State<Lang> {
  String _email = '', _password = '';

  final auth = FirebaseAuth.instance;
  String dropdownvalue = 'English';
  var items = [
    'English',
    'French',
    'Russian',
    'Hindi',
    'Spanish',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              bottom: 0.0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 102.66,
                child: Image.asset(
                  'assets/images/Untitled.png',
                  fit: BoxFit.fill,
                ),
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 120, 0, 50),
                child: Image.asset(
                  'assets/images/image.png',
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Container(
                  height: 30,
                  width: 300,
                  alignment: Alignment.center,
                  child: Text(
                    "Please select your Language",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
                    "You can change the language at any time.",
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                width: 216,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(),
                  border: Border.all(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 0.80),
                ),
                child: DropdownButton(
                  value: dropdownvalue,
                  icon: const Icon(Icons.keyboard_arrow_down_sharp),
                  alignment: Alignment.centerLeft,
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                  isExpanded: true,
                  underline: SizedBox(),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 48,
                width: 216,
                child: ElevatedButton(
                    child: Text("Next".toUpperCase(),
                        style: TextStyle(fontSize: 20)),
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
                              MaterialPageRoute(builder: (context) => app3()))
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
