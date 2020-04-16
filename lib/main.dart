import 'package:flutter/material.dart';
import 'package:baby_care/pages/settings.dart';
import 'package:baby_care/pages/shop.dart';
import 'package:baby_care/pages/profile.dart';
import 'pages/location.dart';

void main() => runApp(new MyApp());
class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}
class MyAppState extends State<MyApp> {
  int _selectedTab = 0;
  final _pageOptions = [
    Shop(),
    Profile(),
    Settings(),
    LocationPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.grey,
          primaryTextTheme: TextTheme(
            title: TextStyle(color: Colors.white),
          )),
      home: Scaffold(

        body: _pageOptions[_selectedTab],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          selectedItemColor: Colors.lightBlueAccent,
          onTap: (int index) {
            setState(() {
              _selectedTab = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text('Shop'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              title: Text('Location'),
            ),

          ],
        ),
      ),
    );
  }}





