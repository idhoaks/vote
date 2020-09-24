import 'package:flutter/material.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 100),
                width: 300,
                height: 200,
                child: Image.asset(
                  'img/v2024.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 300,
                height: 200,
                child: Text(
                  "Aplikasi ini adalah aplikasi polling dan survey tokoh-tokoh yang berpotensi dipilih dan terpilih menjadi Presiden dan Wakil Presiden Republik Indonesia 2024.",
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: "Open Sans",
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
