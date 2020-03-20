import 'package:flutter/material.dart';

void main() {
  return runApp(Diapers());
}

class Diapers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Location',
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: LocationPage(),
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
          Image.network(
              "https://image.freepik.com/free-vector/man-social-networking-mobile-internet-interaction-people-virtual-connections-male-female-characters-flat_175690-86.jpg"),
          Text(
            'We want to access your location',
            style: TextStyle(fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: ButtonBar(
              children: <Widget>[
                RaisedButton(
                  child: Text(
                    "Allow Access",
                    style: TextStyle(color: Colors.black),
                    
                  ),
                  onPressed: null,
                ),
                RaisedButton(
                  child: Text(
                    "Pick Manualy",
                    style: TextStyle(color: Colors.black),
                  ),
                  color: Colors.black,
                  onPressed: null,
                ),
              ],
              alignment: MainAxisAlignment.center,
              
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(252, 251, 239, 1),
    );
  }
}
