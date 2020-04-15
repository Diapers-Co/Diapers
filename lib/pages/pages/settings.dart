import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:baby_care/pages/profile.dart';

class Settings extends StatefulWidget {
  Settings({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Settings> {

  Widget _button(String name, IconData icon, Widget nextPage){
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => nextPage));
      },
      child: Container(
          height: 60.0,
          width: 300.0,
          child: Material(
            borderRadius: BorderRadius.circular(20.0),
            shadowColor: Colors.black,
            color: Colors.white,
            elevation: 7.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(
                    name,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'MonteSerrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),

                Icon(icon, color: Colors.lightBlueAccent, size: 30.0,),
              ],
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('Settings',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'MonteSerrat',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,

            ),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
//                      Color(0xFFd7fff0),
//                      Color(0xFFA8D8FF),
                      Colors.lightBlueAccent,
                      Colors.lightBlueAccent


                    ])
            ),
          ),


        ),
        body: SingleChildScrollView(
          child: new Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    // Where the linear gradient begins and ends
                    begin: Alignment.topRight,
                    end: Alignment(0.3, 0),
                    tileMode: TileMode.mirror, // repeats the gradient over the canvas
                    colors: [
                      // Colors are easy thanks to Flutter's Colors class.
                      Color(0xFFA8D8FF),
                      Color(0xFFd7fffd),
//                    Color(0xFFA8D8EA),
                    ],
                  ),
                ),
                  ),
              Column(

                children: <Widget>[

                  SizedBox(height: 25.0),
                  Container(
                      width: 300.0,
                      height: 200.0,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                              image: AssetImage('assets/year0.jpg'),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          boxShadow: [
                            BoxShadow(blurRadius: 7.0, color: Colors.black)
                          ])),
                  SizedBox(height: 25.0),
                  _button('Profile\t', FontAwesomeIcons.female, Profile()),
                  SizedBox(height: 25.0),
                  _button('Notifications\t', FontAwesomeIcons.solidBell,null),
                  SizedBox(height: 25.0),
                  _button('Privacy Plolicy\t', FontAwesomeIcons.globeAsia, null),
                  SizedBox(height: 25.0),
                  _button('Support\t', FontAwesomeIcons.phoneAlt, null),
                  SizedBox(height: 25.0),

                ],
              )
            ],
          ),
        ));
  }
}
