import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';

class AppProvider with ChangeNotifier {
  bool isLoading = false;
  bool isVeg; // = false;
  bool testisVeg; // = false;
  Color changecol; // = Colors.red;

  void changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  AppProvider.Initization() {
//    getstoreVegdata();
  }
  bool getveg() {
    return isVeg;
  }
/*
  getstoreVegdata() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    testisVeg = (prefs.getBool('AvailVeg') ?? false);
    isVeg = (prefs.getBool('Veg') ?? false);
    changecol = isVeg ? Colors.red : Colors.green;
    notifyListeners();
  }

  getstoreavaildata() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('AvailVeg', true);
    print('Prd11 $testisVeg times.');
    notifyListeners();
  }

//bool getveg()( retuen isVeg;)
  getstoredata() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isVeg = (prefs.getBool('Veg') ?? false);
    print('Pressed11 $isVeg times.');
    changecol = isVeg ? Colors.red : Colors.green;
    notifyListeners();
  }

  void ChangeVegPref() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isVeg = (prefs.getBool('Veg') ?? false);
    print('Presseddtfg $isVeg times.');
    isVeg = !isVeg;
    changecol = isVeg ? Colors.red : Colors.green;
    await prefs.setBool('Veg', isVeg);
    notifyListeners();
  }

  void ChangeVegTrue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isVeg = (prefs.getBool('Veg') ?? false);
    print('Pressed $isVeg times.');
    isVeg = true;
    changecol = isVeg ? Colors.red : Colors.green;
    await prefs.setBool('Veg', isVeg);
    notifyListeners();
  }

  void SaveVegPref() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isVeg = (prefs.getBool('Veg') ?? false);
    print('Pressedwedee $isVeg times.');
    isVeg = false; //!isVeg;
    changecol = isVeg ? Colors.red : Colors.green;
    await prefs.setBool('Veg', isVeg);
    notifyListeners();
  }*/
}
