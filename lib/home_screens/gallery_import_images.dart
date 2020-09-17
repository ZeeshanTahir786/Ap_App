import 'dart:ui';

import 'package:flutter/material.dart';
import 'images_import_screen.dart';

class GalleryImportImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.2 / 3,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x29000000),
                    offset: Offset(0, 0),
                    blurRadius: 3,
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: GestureDetector(
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: 17,
                          color: Color(0xff000000),
                          letterSpacing: -0.40800000000000003,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ImageImportScreen()));
                      },
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                  ),
                  Text(
                    'All Media',
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize: 17,
                      color: Color(0xff000000),
                      letterSpacing: -0.40800000000000003,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  IconButton(
                      icon: Icon(Icons.keyboard_arrow_down), onPressed: () {}),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.12,
                  ),
                  Text(
                    'Select',
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize: 17,
                      color: const Color(0xff000000),
                      letterSpacing: -0.40800000000000003,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    child: Container(
                      height: 120,
                      width: 100,
                      child: Image.asset(
                        'assets/images/Select_1Image.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    onTap: () {},
                  ),
                  Container(
                    height: 120,
                    width: 100,
                    child: Image.asset(
                      'assets/images/Select_2Image.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                      height: 120,
                      width: 100,
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Image(
                            image:
                                AssetImage('assets/images/Select_3Image.jpg'),
                            fit: BoxFit.cover,
                          )
                        ],
                      )),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: Container(
                    height: 120,
                    width: 100,
                    child: Image.asset(
                      'assets/images/Select_4Image.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: Container(
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Image(
                            image:
                                AssetImage('assets/images/Select_5Image.jpg'),
                            fit: BoxFit.cover,
                          )
                        ],
                      )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: Container(
                    height: 120,
                    width: 100,
                    child: Image.asset(
                      'assets/images/Select_6Image.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Container(
                    height: 120,
                    width: 100,
                    child: Image.asset(
                      'assets/images/Select_7Image.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1),
                  child: Container(
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Image(
                            image:
                                AssetImage('assets/images/Select_8Image.jpg'),
                            fit: BoxFit.cover,
                          )
                        ],
                      )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 120,
                    width: 100,
                    child: Image.asset(
                      'assets/images/Select_9Image.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Container(
                    height: 120,
                    width: 100,
                    child: Image.asset(
                      'assets/images/Select_10Image.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1),
                  child: Container(
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Image(
                            image:
                                AssetImage('assets/images/Select_11Image.jpg'),
                            fit: BoxFit.cover,
                          )
                        ],
                      )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 120,
                    width: 100,
                    child: Image.asset(
                      'assets/images/Select_12Image.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Container(
                    height: 120,
                    width: 100,
                    child: Image.asset(
                      'assets/images/Select_13Image.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1),
                  child: Container(
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Image(
                            image:
                                AssetImage('assets/images/Select_14Image.jpg'),
                            fit: BoxFit.cover,
                          )
                        ],
                      )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 120,
                    width: 100,
                    child: Image.asset(
                      'assets/images/Select_15Image.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Container(
                    height: 120,
                    width: 100,
                    child: Image.asset(
                      'assets/images/Select_16Image.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1),
                  child: Container(
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Image(
                            image:
                                AssetImage('assets/images/Select_17Image.jpg'),
                            fit: BoxFit.cover,
                          )
                        ],
                      )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 120,
                    width: 100,
                    child: Image.asset(
                      'assets/images/Select_18Image.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
