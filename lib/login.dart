import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:vote24/main_screen.dart';
import 'package:vote24/model.dart';
import 'package:faker/faker.dart';
import 'package:vote24/pilihkota.dart';
import 'package:vote24/vote1.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  String kota;
  Login({this.kota});
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _namavoter = TextEditingController();
  GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            // padding: EdgeInsets.all(20),
            // color: Colors.red,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: MediaQuery.of(context).size.height / 6,
                    // color: Colors.green,
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Terima Kasih",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w800,
                            fontFamily: "Open Sans",
                            color: Colors.red,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.6,
                    height: MediaQuery.of(context).size.height / 6,
                    // color: Colors.yellow,
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "Kami anggap Anda sudah membaca dan memahami kebijakan data dalam aplikasi ini.",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Perkenalkan diri Anda",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white54,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24.0,
                    // width: MediaQuery.of(context).size.width / 1.5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => PilihKota()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black45),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: MediaQuery.of(context).size.width / 1.5,
                      height: 50,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Icon(Icons.location_on),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Text(widget.kota == null
                                ? "Silakan pilih kota"
                                : widget.kota),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24.0,
                    // width: MediaQuery.of(context).size.width / 1.5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.circular(10),
                      // color: Colors.green,
                    ),
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: 50,
                    child: TextFormField(
                      textCapitalization: TextCapitalization.words,
                      controller: _namavoter,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        // filled: true,
                        icon: Icon(Icons.person),
                        hintText: "Nama lengkap",
                        // labelText: "Nama *",
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (_namavoter.text == '') {
                        snackbarerror();
                      } else {
                        if (widget.kota == null) {
                          snackbarerror();
                        }
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Vote1()));
                        // print(_namavoter.text);
                        // print(widget.kota);
                      }
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
      ),
    );
  }

  void snackbarerror() {
    _scaffoldkey.currentState.showSnackBar(SnackBar(
      backgroundColor: Colors.red,
      content: Text("Nama dan kota domisili harap diisi",
          style: TextStyle(
            fontSize: 18,
            fontFamily: "Open Sans",
            color: Colors.white60,
          )),
      duration: Duration(seconds: 2),
    ));
  }
}
