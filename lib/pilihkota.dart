import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:vote24/url.dart';

import 'loading.dart';
import 'login.dart';
import 'model.dart';

class PilihKota extends StatefulWidget {
  @override
  PilihKota_State createState() => PilihKota_State();
}

class PilihKota_State extends State<PilihKota> {
  var loading = false;
  TextEditingController pencarian = TextEditingController();
  List<KotaModel> listKota = [];
  List<KotaModel> listKota1 = [];
  List<KotaModel> listKota2 = [];

  Future _loadKota() async {
    setState(() {
      loading = true;
    });
    final response = await http.get(URL().url + '/vote2024_API/Vote/kota');
    if (response.statusCode == 200) {
      setState(() {
        loading = false;
      });
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
          child: loading
              ? Loading()
              : Column(
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
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login(
                                            kota: kota,
                                          )));
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom:
                                    BorderSide(color: Colors.grey, width: 2),
                              ),
                            ),
                            // color: Colors.redAccent,
                            padding:
                                EdgeInsets.only(top: 10, bottom: 10, left: 20),
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
      ),
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
