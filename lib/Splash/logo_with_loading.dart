import 'dart:async';
import 'package:flutter/material.dart';
import 'package:my_second_ui/after_splash_screen/page_view.dart';

class LogoWithLoading extends StatefulWidget {
  @override
  _LogoWithLoadingState createState() => _LogoWithLoadingState();
}

class _LogoWithLoadingState extends State<LogoWithLoading> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => OnboardScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/background_image.jpg",
                    ),
                    fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Image.asset(
                    'assets/images/Logo.png',
                    width: 220,
                    height: 150,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Image.asset(
                  'assets/images/loading.gif',
                )
              ],
            )),
      ),
    );
  }
}
