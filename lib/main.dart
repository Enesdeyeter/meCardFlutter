import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personal Contact Card'),
          backgroundColor: Color.fromRGBO(21, 21, 21, 1),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  child: Icon(
                    Icons.message,
                    size: 26.0,
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.share),
                )),
          ],
        ),
        backgroundColor: Colors.black38,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80.0,
                backgroundColor: Colors.blueGrey,
                backgroundImage: AssetImage('images/pp.jpg'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Enes Bilaloğulları',
                style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'Signika',
                    fontWeight: FontWeight.w600,
                    color: Colors.white70),
              ),
              Text(
                'Mobile App Development',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'FiraSans',
                    fontWeight: FontWeight.w300,
                    color: Colors.white70),
              ),
              SizedBox(
                height: 32,
                width: 340.0,
                child: Divider(
                  color: Colors.white54,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
                child: ListTile(
                  tileColor: Colors.black87,
                  leading: Icon(Icons.phone, color: Colors.white70),
                  title: Text(
                    '+90 (284) 223 42 10',
                    style: TextStyle(
                      color: Colors.white70,
                      fontFamily: 'Signika',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  tileColor: Colors.black87,
                  leading: Icon(Icons.email_outlined, color: Colors.white70),
                  title: Text(
                    'lorem@trakya.edu.tr',
                    style: TextStyle(
                      color: Colors.white70,
                      fontFamily: 'Signika',
                      fontSize: 20.0,
                    ),
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
