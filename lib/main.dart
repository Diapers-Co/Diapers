import 'package:flutter/material.dart';
import 'package:baby_care/pages/profile.dart';
import 'package:baby_care/pages/shop.dart';
import 'package:baby_care/pages/settings.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Baby Care',
      home: Shop(),
    );
  }
}

