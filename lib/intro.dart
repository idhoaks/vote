import 'package:flutter/material.dart';
import 'package:vote24/main_screen.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color.fromRGBO(255, 0, 0, 0.9),
              const Color.fromRGBO(255, 255, 255, 0.9)
            ],
          )),
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
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 100, 0, 50),
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
        ),
      ),
    );
  }
}
