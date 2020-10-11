import 'package:flutter/material.dart';
import 'package:vote24/login.dart';
import 'package:vote24/main_screen.dart';

class Agree extends StatefulWidget {
  @override
  _AgreeState createState() => _AgreeState();
}

class _AgreeState extends State<Agree> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    width: 300,
                    height: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          width: 100,
                          color: Colors.white,
                          child: Image.asset("img/frame.png"),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          width: 100,
                          color: Colors.white,
                          child: Image.asset("img/frame.png"),
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: MediaQuery.of(context).size.width / 1.3,
                        height: MediaQuery.of(context).size.height / 2.5,
                        child: Column(children: [
                          Container(
                            child: Text(
                              "Aplikasi ini TIDAK BERAFILIASI dengan instansi, lembaga, organisasi, milik pemerintah dan atau partai politik manapun.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Open Sans",
                                color: Colors.white70,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            child: Text(
                              "Data di aplikasi ini tidak dapat dijadikan acuan resmi elektabilitas oleh partai politik atau calon yang berkepentingan atas usaha untuk kepemilikan kekuasaan.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Open Sans",
                                color: Colors.white70,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            child: Text(
                              "Pembuat aplikasi bebas dari tuntutan apapun atas penyalahgunaan data informasi oleh pengguna.",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Open Sans",
                                color: Colors.white70,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ]),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: MediaQuery.of(context).size.width / 1.3,
                        height: MediaQuery.of(context).size.height / 2.5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Center(
                              child: Container(
                                // color: Colors.green,
                                margin: EdgeInsets.only(bottom: 20, right: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Checkbox(
                                      activeColor: Colors.black,
                                      tristate: false,
                                      value: isChecked,
                                      onChanged: (value) {
                                        setState(() {
                                          isChecked = value;
                                        });
                                      },
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isChecked = !isChecked;
                                        });
                                      },
                                      child: Text(
                                        "Saya setuju!",
                                        style: TextStyle(
                                          color: Colors.white70,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  isChecked
                      ? GestureDetector(
                          onTap: () {
                            isChecked
                                ? Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Login()))
                                : print("string");
                          },
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 75, 0, 10),
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: isChecked
                                        ? Colors.red.withOpacity(0.5)
                                        : Colors.grey,
                                    borderRadius: BorderRadius.circular(200)),
                                child: Icon(
                                  Icons.chevron_right,
                                  size: 35.0,
                                  color: isChecked ? Colors.red : Colors.grey,
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
                        )
                      : Container(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
