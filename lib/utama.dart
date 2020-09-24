import 'package:flutter/material.dart';
import 'package:vote24/intro.dart';

// import 'main_screen.dart';

class Utama extends StatefulWidget {
  @override
  _UtamaState createState() => _UtamaState();
}

class _UtamaState extends State<Utama> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        // appBar: AppBar(
        //   title: Text('Judul'),
        // ),
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Center(
                child: Container(
                  // color: Colors.blue,

                  // margin: EdgeInsets.all(50),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    // crossAxisAlignment: CrossAxisAlignment.start,

                    children: <Widget>[
                      Text(
                        "Selamat Datang",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Open Sans'),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        // color: Colors.blue,

                        width: 300,

                        height: 200,

                        // margin: EdgeInsets.only(bottom: 50),

                        // padding: EdgeInsets.only(bottom: 50),

                        child: Image.asset(
                          'img/v2024.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Intro()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 100),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.35),
                            borderRadius: BorderRadius.circular(200)),
                        child: Icon(
                          Icons.chevron_right,
                          size: 35.0,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
