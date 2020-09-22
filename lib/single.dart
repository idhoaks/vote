import 'package:flutter/material.dart';

class Single extends StatefulWidget {
  @override
  _SingleState createState() => _SingleState();
}

class _SingleState extends State<Single> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            // color: Colors.red,
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,

                      height: 300,

                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200),
                              color: Colors.blue,
                            ),
                            height: 200,
                            width: 200,
                          ),
                        ],
                      ),

                      // decoration: BoxDecoration(

                      //   image: DecorationImage(

                      //     image: AssetImage("img/me.jpg"),

                      //     fit: BoxFit.contain,

                      //   ),

                      // ),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        // height: 200,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.fromLTRB(15, 30, 10, 20),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // height: 50,
                                    // width: 50,
                                    // color: Colors.black,
                                    child: Column(
                                      children: [
                                        Text("Pekerjaan:"),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      // height: 150,
                                      // width: MediaQuery.of(context).size.width,
                                      color: Colors.red,
                                      child: Column(
                                        children: [
                                          Text(
                                            "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Neque reprehenderit quasi esse, at, voluptate numquam ullam debitis et, quo amet tenetur beatae. Sunt perspiciatis illum eos veritatis reprehenderit minus at.",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontFamily: "Open Sans",
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // height: 50,
                                    // width: 50,
                                    // color: Colors.black,
                                    child: Column(
                                      children: [
                                        Text("Pekerjaan:"),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      // height: 150,
                                      // width: MediaQuery.of(context).size.width,
                                      color: Colors.red,
                                      child: Column(
                                        children: [
                                          Text(
                                            "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Neque reprehenderit quasi esse, at, voluptate numquam ullam debitis et, quo amet tenetur beatae. Sunt perspiciatis illum eos veritatis reprehenderit minus at.",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontFamily: "Open Sans",
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  margin: EdgeInsets.fromLTRB(25, 275, 25, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.orange,
                  ),
                  child: Center(
                      child: Text("Nama",
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily: "Open Sans",
                          ))),
                ),
              ],
            )),
      ),
    );
  }
}
