import 'package:flutter/material.dart';
import 'package:eshop/src/helpers/style.dart';

showAlertDialog(BuildContext context, String a) {
  var screenSize = MediaQuery.of(context).size;
  var width = screenSize.width;
  var height = screenSize.height;
  String b = "";
  List c = a.split(new RegExp("<"));
  // set up the buttons
  Widget cancelButton = FlatButton(
    child: Text("Cancel"),
    onPressed: () {
      Navigator.of(context).pop(); // dismiss dialog
    },
  );
  Widget continueButton = FlatButton(
    child: Text("Add to cart"),
    onPressed: () {
      b = (double.parse(c[1]) * double.parse(c[2])).toStringAsFixed(2);
      Navigator.of(context).pop(); // dismiss dialog
      //  showAlertDialog(context, b);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Enter the Quantity of " + c[0]),
    content: Container(
        height: 100,
        width: width - 50,
        child: Column(children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <
              Widget>[
            Expanded(
              flex: 5,
              child: Text("Quantity"),
            ),
            Expanded(
              flex: 5,
              child: TextField(
                  cursorColor: black,
                  style: TextStyle(fontSize: 16, color: black),
                  decoration: InputDecoration(
                      /*  enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3.0, color: Colors.black54),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        //  focusColor: white, // Colors.white,
                        border: InputBorder.none,
                      ),**/
                      hintText: c[2] != null ? c[2] : "1", // c[1].toString(),
                      hintStyle: TextStyle(fontSize: 16, color: black)),
                  onSubmitted: (String value) {
                    //  b = (double.parse(c[1]) * double.parse(value)).toString();
                    if (value == "") {
                      value = c[2];
                    }
                    b = c[0] + "<" + c[1] + "<" + value;
                    Navigator.of(context).pop(); // dismiss dialog
                    print(b);
                    showAlertDialog(context, b);
                  }),
            ),
          ]),
          SizedBox(
            height: 10,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(b == null
                    ? b = ""
                    : b = "Amount:    " +
                        (double.parse(c[1]) * double.parse(c[2]))
                            .toStringAsFixed(2)),
                /*  Expanded(
                  flex: 5,
                  child:
                ),
                Expanded(
                  flex: 5,
                  child: TextField(
                      cursorColor: black,
                      style: TextStyle(fontSize: 16, color: black),
                      decoration: InputDecoration(
                        /*  enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3.0, color: Colors.black54),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        //  focusColor: white, // Colors.white,
                        border: InputBorder.none,
                      ),**/
                          hintText: c[1].toString(),
                          hintStyle: TextStyle(fontSize: 16, color: black)),
                      onSubmitted: (String value) {
                        b = (double.parse(c[1]) * double.parse(value))
                            .toString();
//                        Navigator.of(context).pop(); // dismiss dialog
//                        b = a + "<" + value;
                        print(b);
                        // showAlertDialog(context, b);
                      }),
                ),*/
              ])
        ])),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
