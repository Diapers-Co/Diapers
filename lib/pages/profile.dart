import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Profile> {
  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
            ),
            Text('Back',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }

  Widget _entryField(String title, AssetImage itemImage) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child:
        Column(children: <Widget>[

          Row(children: <Widget>[
            Padding(padding: EdgeInsets.symmetric(horizontal: 10),),
            Image(image: itemImage,),
            Text(
              '\t'+title,
              style: TextStyle(fontSize: 25, fontFamily: 'Ubuntu', ),
            ),

          ],),

          Row(children: <Widget>[
            Expanded(
              child: new Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Divider(
                    color: Colors.black,
                    height: 20,
                  )),
            ),
          ]),
        ],)



    );
  }

  Widget _editButton() {
    return InkWell(
        onTap: () {
//          Navigator.push(
//              context, MaterialPageRoute(builder: (context) => CustomerListOfCompanies()));
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(vertical: 15),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.grey.shade400,
                    offset: Offset(2, 4),
                    blurRadius: 5,
                    spreadRadius: 5)
              ],
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xFFA8D8FF), Color(0xFFA8D8FF)])

          ),
          child: Text(
            'EDIT PROFILE',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        )

    );
  }


  Widget _contentWidget() {
    return Column(
      children: <Widget>[

        CircleAvatar(
          radius: 80,
          backgroundColor: Color(0xFFA8D8FF),
          backgroundImage: AssetImage('assets/avatar.jpg'),
        ),
        _entryField(" Name:", AssetImage('assets/person_icon.png')),
        _entryField(" Mobile:", AssetImage('assets/mobile_icon.png')),
        _entryField(" Email:", AssetImage('assets/email_icon.png')),
        _entryField(" Address:", AssetImage('assets/home_icon.png')),
        _editButton(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(
          children: <Widget>[
            ClipPath(
              child: Container(color: Color(0xFFA8D8FF)),
              clipper: getClipper(),
            ),
            Positioned.fill(

                top: MediaQuery.of(context).size.height / 5,
                child: Column(
                  children: <Widget>[
                    Container(
                        width: 150.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            image: DecorationImage(
                                image: AssetImage('assets/avatar.jpg'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(75.0)),
                            boxShadow: [
                              BoxShadow(blurRadius: 7.0, color: Colors.black)
                            ])),
                    SizedBox(height: 90.0),
                    Text(
                      'Lian Ahmed',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'MonteSerrat'),
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      '0555555555 - Lian@hotmail.com',
                      style: TextStyle(
                          fontSize: 17.0,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'MonteSerrat'),
                    ),

                    SizedBox(height: 15.0),
                    Text(
                      'Dhahran, Saudi Arabia',
                      style: TextStyle(
                          fontSize: 17.0,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'MonteSerrat'),
                    ),
                    SizedBox(height: 25.0),
                    Container(
                        height: 35.0,
                        width: 120.0,
                        child: Material(
                          borderRadius: BorderRadius.circular(10.0),
                          shadowColor: Colors.grey,
                          color: Color(0xFFA8D8F0),
                          elevation: 7.0,
                          child: GestureDetector(
                            onTap: () {},
                            child: Center(
                              child: Text(
                                'EDIT PROFILE',
                                style: TextStyle(color: Colors.white, fontFamily: 'Montserrat'),
                              ),
                            ),
                          ),
                        )),
                    SizedBox(height: 25.0),

                  ],
                ))
          ],
        ));
  }
}
class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height / 1.9);
    path.lineTo(size.width + 125, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}