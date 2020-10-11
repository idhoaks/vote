import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:vote24/main_screen.dart';
import 'package:vote24/model.dart';
import 'package:faker/faker.dart';
import 'package:vote24/vote1.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  List<KotaModel> listKota = [];
  List<KotaModel> listKota1 = [];
  List<KotaModel> listKota2 = [];
  TextEditingController pencarian = TextEditingController();
  Future _loadKota() async {
    final response =
        await http.get('http://192.168.43.205/vote2024_API/Vote/kota');
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body)['data'];
      setState(() {
        for (var i = 0; i < data.length; i++) {
          listKota.add(KotaModel(data[i]['id_kota'], data[i]['nama_kota']));
          listKota2.add(KotaModel(data[i]['id_kota'], data[i]['nama_kota']));
        }
        ;
      });
    }
  }

  String kota = "Pilih Kota Domisili";
  @override
  void initState() {
    super.initState();
    _loadKota();
    pencarian.addListener(() {
      filterSearch(pencarian.text.toUpperCase());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        // filled: true,
                        icon: Icon(Icons.person),
                        hintText: "Nama lengkap",
                        // labelText: "Nama *",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24.0,
                    // width: MediaQuery.of(context).size.width / 1.5,
                  ),
                  GestureDetector(
                    onTap: () {
                      dialogPilihKota(context);
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
                            child: Text(kota),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Vote1()));
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

  void dialogPilihKota(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text("Pilih kota domisili",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15, right: 15),
                  child: TextFormField(
                    controller: pencarian,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Ketik nama kota',
                    ),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: listKota2.length,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    final x = listKota2[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          kota = x.namaKota;
                          Navigator.pop(context);
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.grey, width: 2),
                          ),
                        ),
                        // color: Colors.redAccent,
                        padding: EdgeInsets.only(top: 10, bottom: 10, left: 20),
                        margin: EdgeInsets.only(top: 5, bottom: 5),
                        child: Text(x.namaKota,
                            style: TextStyle(
                              fontSize: 20,
                            )),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  filterSearch(String query) {
    listKota1.clear();
    if (query.isNotEmpty) {
      listKota.forEach((item) {
        if (item.namaKota.contains(query)) {
          listKota1.add(item);
        }
      });
      setState(() {
        listKota2.clear();
        listKota2.addAll(listKota1);
      });
      print(query);
      return;
    } else {
      setState(() {
        listKota2.clear();
        listKota2.addAll(listKota);
      });
    }
  }
}
