import 'package:flutter/material.dart';
import 'dart:async';

import 'package:my_second_ui/Splash/logo_screen.dart';
import 'package:my_second_ui/Splash/logo_with_loading.dart';
import 'package:my_second_ui/after_splash_screen/screen1.dart';
import 'package:my_second_ui/home_screens/home_screen1.dart';
import 'package:my_second_ui/home_screens/images_import_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _SplashScreen(),
      routes: {
        'LogoScreen': (context) => LogoScreen(),
        'LogoWithLoading': (context) => LogoWithLoading(),
        'Screen1': (context) => Screen1(),
        'HomeScreen1': (context) => HomeScreen1(),
        'ImageImportScreen': (context) => ImageImportScreen(),
      },
    );
  }
}

class _SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<_SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, 'LogoScreen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background_image.jpg"),
                fit: BoxFit.cover)),
      ),
    );
  }
}
