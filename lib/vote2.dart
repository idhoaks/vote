import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:vote24/main_screen.dart';
import 'package:vote24/model.dart';

class Vote2 extends StatefulWidget {
  @override
  _Vote2State createState() => _Vote2State();
}

class _Vote2State extends State<Vote2> {
  List<Calon1Model> listCapres = [];
  String capres = "Pilih Kota Domisili";
  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 24; i++) {
      var namacapresfaker = faker.person.firstName();
      listCapres.add(Calon1Model(namacapresfaker));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            // color: Colors.yellow,
            child: Column(
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
                        "Josss!",
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
                    "Sekarang, siapa orang yang akan Anda pilih sebagai Wakil Presiden di pemilihan 2024?",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    dialogVote2(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 50,
                    width: MediaQuery.of(context).size.width / 3.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Pilih Sekarang",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white70,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  // width: MediaQuery.of(context).size.width / 1.5,
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        height: 100,
                        width: 75,
                        color: Colors.blue,
                        child: Image.asset("img/frame.png"),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 100,
                        width: 75,
                        color: Colors.blue,
                        child: Image.asset("img/frame.png"),
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

  void dialogVote2(BuildContext context) {
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
                  child: Text(
                    "Pilih Wakil Presiden",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ),
                // Container(
                //   child: GridView.builder(
                //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //         crossAxisCount: 2),
                //     itemBuilder: (_, index) => FlutterLogo(),
                //     itemCount: 4,
                //   ),
                // ),
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  shrinkWrap: true,
                  itemCount: listCapres.length,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    final x = listCapres[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          capres = x.namaCalon;
                          Navigator.pop(context);
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          image:
                              DecorationImage(image: AssetImage("img/me.jpg")),
                          // color: Colors.red,
                          // borderRadius: BorderRadius.circular(200)
                          // border: Border(
                          //   bottom: BorderSide(color: Colors.grey, width: 2),
                          // ),
                        ),
                        // color: Colors.redAccent,
                        // padding: EdgeInsets.only(top: 10, bottom: 10, left: 20),
                        margin: EdgeInsets.all(2),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                x.namaCalon,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white60,
                                ),
                              ),
                            ]),
                      ),
                    );
                  },
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  // color: Colors.lightGreen,
                  child: Text(
                    "Pilihan Anda belum terdaftar?",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  color: Colors.lightGreen,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Vote2()));
                          },
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text(
                                    "Tambahkan",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Icon(Icons.add_circle, size: 30),
                                ),
                              ]),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
