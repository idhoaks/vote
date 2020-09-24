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
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: <Widget>[
                  Container(
                    color: Colors.red,
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width / 1,
                  ),
                  Container(
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width / 1,
                  ),
                ],
              ),
              Center(
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainScreen()));
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
            ],
          ),
        ),
      ),
    );
  }
}
