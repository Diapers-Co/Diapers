
import 'package:baby_care/pages/shop.dart';
import 'package:flutter/material.dart';
import 'Ryan/AllowGPS.dart';
import 'Ryan/MapScreen.dart';
// import 'package:/pages/profile.dart';
// import 'package:/pages/shop.dart';
// import 'package:/pages/settings.dart';


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


class LocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "data",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: <Widget>[
          Image.asset("assets/images/diapers_location_flutter.jpg"),
          Text(
            'We want to access your location',
            style: TextStyle(fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Column(
              children: <Widget>[
                RaisedButton(
                    child: Text(
                      "MapScreen",
                    ),
                    onPressed: () {

                      Navigator.push((context),
                          MaterialPageRoute(builder: (context) {
                        return MapScreen();
                      }));
                    }),
                RaisedButton(
                  child: Text(
                    "Allow Access",
                  ),
                  onPressed: () {
                    Navigator.push((context),
                        MaterialPageRoute(builder: (context) {
                      return AllowGPS();
                    }));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(252, 251, 239, 1),
    );
  }
}
