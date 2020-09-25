import 'package:flutter/material.dart';
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
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: 300,
                  height: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        width: 100,
                        color: Colors.black54,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        width: 100,
                        color: Colors.orange,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 300,
                  height: 310,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Aplikasi ini TIDAK berafiliasi dengan instansi, lembaga, organisasi, atau partai politik manapun. Data di aplikasi ini tidak dapat dijadikan acuan resmi elektabilitas oleh partai politik atau calon yang berkepentingan atas usaha untuk kepemilikan kekuasaan.",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Open Sans",
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Checkbox(
                                activeColor: Colors.red,
                                tristate: false,
                                value: isChecked,
                                onChanged: (value) {
                                  setState(() {
                                    isChecked = value;
                                  });
                                },
                              ),
                              Text("Saya setuju!")
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainScreen()));
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 55, 0, 10),
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
        ),
      ),
    );
  }
}
