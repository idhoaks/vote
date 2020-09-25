import 'package:flutter/material.dart';
import 'package:vote24/detailsreen.dart';
import 'package:vote24/single.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int ukuranfont = 20;
  List<String> items = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Text("Top 5 Capres"),
            Container(
              height: 250,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        height: 250,
                        width: 150,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(),
                            Text(
                              "Capres $index",
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        child: Container(
                          height: 35,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Text("Top 5 Cawapres"),
            Container(
              height: 250,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen()));
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: 250,
                          width: 150,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(),
                              Text(
                                "Capres $index",
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          child: Container(
                            height: 35,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
