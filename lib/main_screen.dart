import 'package:flutter/material.dart';
import 'package:vote24/single.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int ukuranfont = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(20, 50, 20, 0),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.grid_on),
                          Text("Icon 1"),
                        ],
                      ),
                      // margin: EdgeInsets.only(top: 50),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.red.withOpacity(0.5),
                          // border: Border.all(color: Colors.black, width: 3),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.list),
                          Text("Icon 1"),
                        ],
                      ),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.5),
                          // border: Border.all(color: Colors.black, width: 3),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 3, right: 3, top: 20),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: (400 / 600) // 3 ke kanan
                      ),
                  itemCount: 12, //jumlah item

                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                      decoration: BoxDecoration(
                        // color: Colors.orange.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("img/me.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Single()));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Flexible(
                              flex: 1,
                              child: Container(
                                // height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                  // color: Colors.red,
                                  // image: DecorationImage(
                                  //   image: AssetImage("img/me.jpg"),
                                  // ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.25),
                                            blurRadius: 7,
                                          )
                                        ],
                                      ),
                                      height: 30,
                                      width: MediaQuery.of(context).size.width,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "86",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white70,
                                            ),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.white70,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                color: Colors.green,
                              ),
                              width: MediaQuery.of(context).size.width,
                              height: 30,
                              child: Center(
                                child: Text(
                                  "Nama",
                                  style: TextStyle(
                                    fontSize: ukuranfont.toDouble(),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
