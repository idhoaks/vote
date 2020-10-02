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
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width / 1,
                  // color: Colors.green,
                  padding: EdgeInsets.fromLTRB(50, 100, 50, 50),
                  child: Image.asset(
                    'img/v2024landscapered.png',

                    // fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,
                  color: Colors.red,
                  padding: EdgeInsets.only(top: 150, left: 20, right: 20),
                  child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            "Ini adalah aplikasi polling dan survey tokoh-tokoh yang berpotensi dipilih dan terpilih menjadi Presiden dan Wakil Presiden Republik Indonesia 2024.",
                            style: TextStyle(
                              fontSize: 22,
                              fontFamily: "Open Sans",
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ]),
                ),
              ],
            ),
            Positioned(
              bottom: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Agree()));
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 20, top: 30),
                  child: Column(children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(200)),
                      child: Icon(
                        Icons.chevron_right,
                        size: 35.0,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "lanjutkan",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white70,
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
