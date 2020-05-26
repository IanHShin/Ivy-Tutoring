import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

void main() => runApp(s_nimewo());

class s_nimewo extends StatelessWidget {
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Spanish"),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        physics: AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        children: <Widget>[
          Container(
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  Container(
                    child: Text(
                      "APRENDAMOS LOS NUMEROS",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 20.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Number('1'),
                      Number('2'),
                      Number('3'),
                      Number('4')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Number('5'),
                      Number('6'),
                      Number('7'),
                      Number('8')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Number('9'),
                      Number('10'),
                      Number('11'),
                      Number('12')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Number('13'),
                      Number('14'),
                      Number('15'),
                      Number('16')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Number('17'),
                      Number('18'),
                      Number('19'),
                      Number('20')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Number('21'),
                      Number('22'),
                      Number('23'),
                      Number('24')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Number('25'),
                      Number('26'),
                      Number('27'),
                      Number('28')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Number('29'),
                      Number('30'),
                      Number('31'),
                      Number('32')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Number('33'),
                      Number('34'),
                      Number('35'),
                      Number('36')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Number('37'),
                      Number('38'),
                      Number('39'),
                      Number('40')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Number('50'),
                      Number('60'),
                      Number('70'),
                      Number('80')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Number('90'),
                      Number('100'),
                    ],
                  ),
                  SizedBox(height: 50,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Number extends StatelessWidget {
  final String letter;
  const Number(this.letter);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          FlutterPluginTts.speak(letter);
        },
        child: Card(
          child: Container(
            height: ScreenUtil.instance.setHeight(240),
            child: Container(
              padding: EdgeInsets.all(0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    letter,
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            ),
          ),
          color: Colors.teal[10],
        ),
      ),
    );
  }
}

