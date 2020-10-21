import 'package:flutter/material.dart';
import 'package:eshop/src/screen/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
          /* appBar: AppBar(
            title: Text('Welcome to Flutter'),
          ),*/
          body: Home()),
    );
  }
}

/*void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
      /*MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: AppProvider.Initization()),
        ChangeNotifierProvider.value(value: CategoryProvider()),
        ChangeNotifierProvider.value(
            value: DisplayProvider()), //.initialize()),
      ],
      child: Phoenix(
          child:*/
      MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Epicurean Cuisine',
          theme: ThemeData(
            primarySwatch: Colors.red, // primarySwatch: Colors.black,
          ),
          home: Home())); //ScreensController()))));
}

class ScreensController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categoryProvider = Provider.of<CategoryProvider>(context);
    final displayProvider = Provider.of<DisplayProvider>(context);
    final app = Provider.of<AppProvider>(context);
    bool wait = true;
    /*   app.testisVeg == false
        ? showiniAlertDialog(context) //print("showinital(context)")
        : app.testisVeg = true;
    print("showinital(context)");
    print(app.testisVeg);
    while (app.testisVeg) {}
    ;*/
    /* switch (app.testisVeg) {
      case false:
        showinital(context);
        break;
      default:
         LoginScreen();
    }*/
    app.isVeg == null ? app.isLoading : categoryProvider.initialize(app.isVeg);
    return app.testisVeg == false
        ? Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(children: <Widget>[
          Center(
              child: new Image.asset(
                'images/ECborder.png', //category.image,
                // height: 60.0,
                fit: BoxFit.cover,
              )),
          Padding(
              padding: const EdgeInsets.fromLTRB(10, 50, 10, 15),
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                      "Would you like to see only vegetarian recipes?",
                      style: TextStyle(
                        fontSize: 16,
                        color: white,
                        backgroundColor: black,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w600,
                      ) /*CustomText(
                        text: "Would you like to see only vegetarian recipes?",
                        size: 18,
                        color: white,
                        weight: FontWeight.w600,
                      )*/
                  ))),
          Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.fromLTRB(20, 15, 10, 5),
                        child: FlatButton(
                          color: Colors.blue,
                          textColor: Colors.white,
                          disabledColor: Colors.grey,
                          disabledTextColor: Colors.black,
                          padding: EdgeInsets.all(8.0),
                          splashColor: Colors.blueAccent,
                          onPressed: () async {
                            app.changeLoading();
                            await app.SaveVegPref();
                            await app.getstoreavaildata();
                            await categoryProvider.initialize(app.isVeg);
                            app.changeLoading();
                            app.testisVeg = true;
                            //  Home();
                          },
                          child: Text(
                            "Yes",
                            style: TextStyle(fontSize: 20.0),
                          ),
                        )),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(20, 15, 10, 5),
                        child: FlatButton(
                          color: Colors.blue,
                          textColor: Colors.white,
                          disabledColor: Colors.grey,
                          disabledTextColor: Colors.black,
                          padding: EdgeInsets.all(8.0),
                          splashColor: Colors.blueAccent,
                          onPressed: () async {
                            app.changeLoading();
                            await app.ChangeVegTrue();
                            await app.getstoreavaildata();
                            await categoryProvider.initialize(app.isVeg);
                            app.changeLoading();
                            app.testisVeg = true;
                          },
                          child: Text(
                            "No",
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ))
                  ])),
        ]))
        : new SplashScreen(
        seconds: 5,
        navigateAfterSeconds: Home(),
        // new AfterSplash(),
        /*title: new Text(
              'Welcome Epicureans!!!',
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),*/
        image: Image.asset('images/EC.gif'),
        //new Image.network('https://i.imgur.com/TyCSG9A.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        //  onClick: () => print("Flutter chennai"),
        loaderColor: Colors.white //)),
      // ),
    );
  }
}

class AfterSplash {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class AfterSplash1 {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}*/
