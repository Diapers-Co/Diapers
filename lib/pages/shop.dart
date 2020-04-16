// import 'package:baby_care/models/category_model.dart';
// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:baby_care/models/category_model.dart';

class Shop extends StatefulWidget {
  Shop({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  var selectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

        appBar: AppBar(
          title: Text('Shopping',
            style: TextStyle(
              fontFamily: 'MonteSerrat',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,

            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.lightBlueAccent,
        ),

        body: SingleChildScrollView(
          child: new Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Column(children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
                      ),
                      Text(
                        'Categories',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                          fontFamily: 'MonteSerrat',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 170.0,
//                color: Colors.grey,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      Category category = categories[index];
                      return Container(
                        width: 150.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        margin: EdgeInsets.all(5.0),
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Positioned(
                              bottom: 0.0,
                              child: Container(
                                height: 140.0,
                                width: 145.0,
                                decoration: BoxDecoration(
                                    color: Color(0xffffd31d),
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      '${category.ageRange}',
                                      style: TextStyle(
                                        fontSize: 17.0,
                                        fontFamily: 'MonteSerrat',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 5.0,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedCategory = index;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20.0),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black26,
                                          offset: Offset(0.0, 2.0),
                                          blurRadius: 6.0,
                                        ),
                                      ]),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Image(
                                      height: 130.0,
                                      width: 120.0,
                                      image: AssetImage('${category.image}'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    itemCount: categories.length,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(5.0),
                    ),
                    Text(
                      'Subscriptions',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        fontFamily: 'MonteSerrat',
                      ),
                    ),

                  ],
                ),
                Text(
                  ' (' + categories[selectedCategory].ageRange + ')',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                    fontFamily: 'MonteSerrat',
                  ),
                ),

                Container(
                  height: MediaQuery.of(context).size.height /
                      2 - 50, // Half of screen size
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      Category category = categories[selectedCategory];

                      return Container(
                        width: 210.0,
                        height: 320.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xFFA8D8FF),
                        ),
                        margin: EdgeInsets.all(10.0),
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[

                            Positioned(
                              bottom: 5.0,
                              child: Container(
                                height: 120.0,
                                width: 350.0,
                                decoration: BoxDecoration(
//                              color: Color(0xFFA8D8FF),
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      '${category.subscribtions[index].plan + '\$' + category.subscribtions[index].price.toString()}',
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontFamily: 'MonteSerrat',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 50.0,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        offset: Offset(0.0, 2.0),
                                        blurRadius: 6.0,
                                      ),
                                    ]),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image(
                                    height: 160.0,
                                    width: 350.0,
                                    image: AssetImage(
                                        '${category.subscribtions[index].image}'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 10.0,
                              child: Container(
                                decoration: BoxDecoration(
//                              color: Color(0xFFA8D8FF),
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      '${category.subscribtions[index].name}',
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        fontFamily: 'MonteSerrat',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    itemCount: categories[selectedCategory].subscribtions.length,
                  ),
                ),


              ]),

            ],

          ),

        ));
  }
}

