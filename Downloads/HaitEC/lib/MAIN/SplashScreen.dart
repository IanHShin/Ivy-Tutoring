import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:first_app/MAIN/HomePage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  Animation animation;
  AnimationController animationController;

  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: Duration(milliseconds: 4000),
      vsync: this,
    );
    animation = Tween(begin: 500.0, end: 500.0).animate(animationController)
      ..addListener(() {
        setState(() {});
      });
    animationController.forward();

    Timer(
      Duration(seconds: 4),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => HomePage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            width: animation.value,
            height: animation.value,
            child: Container(
              alignment: Alignment.center,
              padding: new EdgeInsets.all(0.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      child: Column(
                    children: <Widget>[
                      Container(
                        height: 150,
                        width: 150,
                        child: Image(
                          image: AssetImage('images/log1024.png'),
                          height: 140,
                        ),
                      ),
                      SizedBox(height: 50),
                      CircularProgressIndicator(backgroundColor: Colors.white)
                    ],
                  ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
