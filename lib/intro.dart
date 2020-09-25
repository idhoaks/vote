import 'package:flutter/material.dart';
import 'package:vote24/main_screen.dart';

// import 'agree.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
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
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 300,
                    height: 200,
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
                    // onTap: () {
                    //   Navigator.push(context,
                    //       MaterialPageRoute(builder: (context) => Agree()));
                    // },
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 75, 0, 10),
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
            ],
          ),
        ),
      ),
    );
  }
}
