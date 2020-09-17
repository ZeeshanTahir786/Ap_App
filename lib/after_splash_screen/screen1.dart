import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  int pageIndex;
  Screen1({this.pageIndex});
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/intro${widget.pageIndex + 1}.png'),
            SizedBox(
              height: 20,
            ),
            new Text(
              "Lorem ipsum doloasr sit amet consectetur adipiscing",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: Color(0xffffffff),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            new Text(
              "Lorem ipsum doloasr sit amet consectetur adipiscing",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w300,
                fontSize: 18,
                color: Color(0xffffffff),
              ),
            )
          ],
        ),
      ),
    );
  }
}
