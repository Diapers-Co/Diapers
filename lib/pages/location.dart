import 'package:flutter/material.dart';

import 'LocationPages/AllowGPS.dart';
import 'LocationPages/MapScreen.dart';


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
          Image.asset("assets/diapers_location_flutter.jpg"),
          Text(
            'We want to access your location',
            style: TextStyle(fontSize: 20),
          ),
          Center(
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