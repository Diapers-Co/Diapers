import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {


  


  @override
  Widget build(BuildContext context) {
    
    //Permission.requestPermissions([PermissionName.Location]);
    return Scaffold(
      appBar: AppBar(title: Text('BARf'),),
      body: Center(
        child: Container(
          height: 700,
          width: 400,
          child: GoogleMap(
              initialCameraPosition: CameraPosition(
            target: LatLng(40.7, -74.0),
            zoom: 1.0,
          )),
        ),
      ),
    );
  }
}
