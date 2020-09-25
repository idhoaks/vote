import 'package:flutter/material.dart';
import 'package:vote24/main_screen.dart';

import 'agree.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(50, 50, 50, 0),
              color: Colors.red,
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width / 1,
              child: Column(
                children: [
                  Image.asset(
                    'img/v2024.png',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Container(
              width: 350,
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Ini adalah aplikasi polling dan survey tokoh-tokoh yang berpotensi dipilih dan terpilih menjadi Presiden dan Wakil Presiden Republik Indonesia 2024.",
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: "Open Sans",
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Agree()));
              },
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 50, 0, 10),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.red.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(200)),
                    child: Icon(
                      Icons.chevron_right,
                      size: 35.0,
                      color: Colors.red,
                    ),
                  ),
                  Text(
                    "lanjutkan",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.black.withOpacity(0.4),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
