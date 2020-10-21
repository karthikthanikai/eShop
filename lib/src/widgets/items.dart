import 'package:flutter/material.dart';

import 'package:eshop/src/helpers/style.dart';
import 'package:eshop/src/widgets/alertshow.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({Key key}) : super(key: key);

  Widget displaying(String descp, BuildContext context) {
    // descp = "test<hg>sugar<2spoon>";

    if (descp.isEmpty) {
      return Text(
        "",
        style: TextStyle(
            //)GoogleFonts.indieFlower(
            //justAnotherHand(
            fontSize: 18,
            color: Colors.grey[800],
            fontWeight: FontWeight.w600),
      );
    } else {
      List dummystr = descp.split(new RegExp(">")); //RegExp("(.*?)/>"))
//   //   stateText = dummystr[0];
//      print("dummystr.length");
//      print(dummystr.length);
      return ListView.builder(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: (dummystr.length - 1).toInt(),
          itemBuilder: (BuildContext ctxt, int Index) {
            List dummystr1 = dummystr[Index].split(new RegExp("<"));
            print(dummystr[Index]);
            return Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 5, right: 5, bottom: 1),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Colors.grey[200],
                    ),
                    child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: GestureDetector(
                            onTap: () {
                              print(dummystr[Index]);
                              print("ff");
                              showAlertDialog(context, dummystr[Index] + "<1");
                            },
                            child: Column(children: <Widget>[
                              Row(children: <Widget>[
                                /*:*/
                                Expanded(
                                    flex: 6,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          5, 2, 10, 2), //.all(5.0),
                                      child: dummystr1[0]
                                              .toString()
                                              .startsWith("]")
                                          ? Text(
                                              dummystr1[0].substring(1),
                                              style: TextStyle(
                                                  //)GoogleFonts.indieFlower(
                                                  //justAnotherHand(
                                                  fontSize: 18,
                                                  color: Colors.grey[800],
                                                  fontWeight: FontWeight
                                                      .w600), /*GoogleFonts.indieFlower(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),*/
                                            )
                                          : Text(
                                              (dummystr1[0] != null)
                                                  ? dummystr1[0]
                                                  : "",
                                              style: TextStyle(
                                                  //)GoogleFonts.indieFlower(
                                                  //justAnotherHand(
                                                  fontSize: 18,
                                                  color: Colors.grey[800],
                                                  fontWeight: FontWeight
                                                      .w600), /*GoogleFonts.indieFlower(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),*/
                                            ),
                                    )),
                                Expanded(
                                    flex: 2,
                                    child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            5, 2, 10, 2),
                                        child: Text(
                                          (dummystr1[1] != null)
                                              ? "Amount : ₹" + dummystr1[1]
                                              : "",
                                          style: TextStyle(
                                              //)GoogleFonts.indieFlower(
                                              //justAnotherHand(
                                              fontSize: 18,
                                              color: Colors.grey[800],
                                              fontWeight: FontWeight
                                                  .w600), /*GoogleFonts.indieFlower(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),*/
                                        )))
                              ]),
//              Divider(
//                color: darkgrey1,
//              )
                            ])))));
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    var _height = (MediaQuery.of(context).size.height) / 2;
    return displaying("Tomato<25>Lemon<50>", context //)
        /*Column(children: <Widget>[
                  /*   SizedBox(
                    height: 10,
                  ),*/
                  /*Container(
  height: 100,
  child: Image.asset(foodData.image),
  ),*/
                  Row(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            flex: 7,
                            child: Text(
                              "Tomato       ",
//  foodData.name,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.w600),
                            )),
                        /*
                    Align(
                        alignment: Alignment.centerLeft,*/
                        Expanded(
                            flex: 3,
                            child: Text(
                              "Rate: ₹25.00",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.w600),
                            )),
                      ]),
                  /*  Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      flex: 7,
                      child:
                          /*Container(
                        height:_height,
                        child:*/
                          Text(
                        "Quantity: 1.000 kg    ",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      )),*/
                  /* ,
                      Text(
                        "1.000 Kg",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ))*/
                  Expanded(
                    flex: 3,
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Amount : ₹25.00 ",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          /* TextField(
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                              decoration: InputDecoration(
                                hintText: "25.00",
                              )),*/
                          /*   TextField(
                              cursorColor: white,
                              style: TextStyle(fontSize: 16, color: white),
                              decoration: InputDecoration(
                                fillColor:
                                    Colors.lightBlue.shade100, //Colors.white,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 3.0,
                                        color: Colors.lightBlue.shade100),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                //  focusColor: white, // Colors.white,
                                hintText: "1.000",
                                hintStyle:
                                    TextStyle(fontSize: 16, color: white),
                                prefixIcon: Padding(
                                  padding: const EdgeInsetsDirectional.only(
                                      start: 10.0),
                                  child: Icon(
                                    Icons.search,
                                    size: 22,
                                    color: white,
                                  ),
                                ),
                                border: InputBorder.none,
                              ),
                              onSubmitted: (String value) {}),*/
                          //),
                        ]),
                    /*  SizedBox(
                        width: 10,
                      ),
                      Text(
                        "₹",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "10.00",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      )),*/
                    /* SizedBox(
                        height: 30,
                      ),
                    ],*/
                  )
                ],
              ),
              SizedBox(
                height: 10,
              )*/
        //        ])
        //      ))
        );
  }
}
