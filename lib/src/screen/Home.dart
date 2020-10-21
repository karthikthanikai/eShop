import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:eshop/src/helpers/style.dart';
import 'package:eshop/src/widgets/items.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  List<Color> _colors = [Colors.lightBlue.shade700, Colors.lightBlue.shade500];
  List<double> _stops = [0.0, 0.7];

  // @override
//class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setEnabledSystemUIOverlays([]);

    var screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    var height = screenSize.height;

    return SafeArea(
        child: Scaffold(
            key: _scaffoldKey,
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
                physics: ScrollPhysics(),
                child: Column(children: <Widget>[
                  Stack(children: <Widget>[
                    Container(
                      // color: Colors.blueAccent,
                      height: 130,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: _colors,
                          stops: _stops,
                        ),
                        //   color: Colors.lightBlue.shade900, //const Color(0xff7c94b6),
                        border: Border.all(
                          width: 1,
                          /* top: BorderSide(
                        width: 16.0, color: Colors.lightBlue.shade900),
                    bottom: BorderSide(
                        width: 16.0, color: Colors.lightBlue.shade900),*/
                        ),
                        borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(70.0)),
                      ),
                      /*borderRadius: BorderRadius.vertical(
                        top: Radius.zero,
                        bottom: Radius.circular(10.0))), //.circular(40)),*/
                      /* decoration: BoxDecoration(
                  border: Border.all(
                    // color: Colors.black,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(40),
                ),*/
                      child: Padding(
                          padding: const EdgeInsets.all(10.0),
//                child: BackdropFilter(
//                    filter: ImageFilter.blur(sigmaX: _sigmaX, sigmaY: _sigmaY),
                          child: Column(children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  flex: 9,
                                  child: TextField(
                                      cursorColor: white,
                                      style:
                                          TextStyle(fontSize: 16, color: white),
                                      decoration: InputDecoration(
                                        fillColor: Colors
                                            .lightBlue.shade100, //Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 3.0,
                                                color:
                                                    Colors.lightBlue.shade100),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        //  focusColor: white, // Colors.white,
                                        hintText: "Search..",
                                        hintStyle: TextStyle(
                                            fontSize: 16, color: white),
                                        prefixIcon: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.only(
                                                  start: 10.0),
                                          child: Icon(
                                            Icons.search,
                                            size: 22,
                                            color: white,
                                          ),
                                        ),
                                        border: InputBorder.none,
                                      ),
                                      onSubmitted: (String value) {}),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          5, 1, 1, 1), //.all(5.0),
                                      child: Stack(children: <Widget>[
                                        GestureDetector(
                                            onTap: () {},
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    child: Icon(
                                                  Icons.shopping_cart,
                                                  size: 40,
                                                  color: white, //app.changecol,
                                                )))),
                                        Positioned.fill(
                                            child: Align(
                                                alignment: Alignment.topCenter,
                                                child: Text("1",
                                                    style: TextStyle(
                                                        //)GoogleFonts.indieFlower(
                                                        //justAnotherHand(
                                                        fontSize: 32,
                                                        color: Colors.red,
                                                        fontWeight:
                                                            FontWeight.w600)))),
                                      ])),
                                ),
                              ],
                            )
                          ])),
                    ),
                    // Divider(),
                    SizedBox(
                      height: 15,
                    ),
                    /*Container(
                      child: Positioned.fill(
                          child: Align(
                              alignment: Alignment.bottomCenter,
                              /*  child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 1, 21, 1),*/
                              //  child: Row(children: <Widget>[
                              child: Icon(
                                Icons.shopping_cart,
                                size: 40,
                                color: white, //app.changecol,
                              )
//                              ])
                              ))),*/
                    Container(
                        child: Positioned.fill(
                            child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.shop,
                              size: 40,
                              color:
                                  white, // Colors.blueAccent.shade50, //app.changecol,
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Icon(
                              Icons.cake,
                              size: 40,
                              color: white,
//                                  Colors.blueAccent.shade100, //app.changecol,
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Icon(
                              Icons.book,
                              size: 40,
                              color:
                                  white, //                                  Colors.blueAccent.shade400, //app.changecol,
                            )
                          ]),
                    ))),
                  ]),
                  Container(
                    height: height,
                    color: Colors.white,
                    child:
                        /*ListView.builder(
//                        scrollDirection: Axis.vertical,
//                        itemCount: 4,
//                        itemBuilder: (context, index) {
//                          return GestureDetector(
//                            onTap: () {},
                            child: */
                        ItemCard(),
//                              ),
                    //child: CategoryWidget(),
//                          );
//                        }),
                  ),
                ]))));
  }
}
