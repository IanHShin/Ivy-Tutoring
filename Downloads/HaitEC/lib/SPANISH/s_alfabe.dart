import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;


void main() => runApp(s_alfabe());

class s_alfabe extends StatelessWidget {
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
                      "APRENDAMOS EL ALFABETO",
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
                      Letter('A'),
                      Letter('B'),
                      Letter('C'),
                      Letter('D')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Letter('E'),
                      Letter('F'),
                      Letter('G'),
                      Letter('H')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Letter('I'),
                      Letter('J'),
                      Letter('K'),
                      Letter('L')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Letter('M'),
                      Letter('N'),
                      Letter('Ñ'),
                      Letter('O')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Letter('P'),
                      Letter('Q'),
                      Letter('R'),
                      Letter('S')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Letter('T'),
                      Letter('U'),
                      Letter('V'),
                      Letter('W')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Letter('X'),
                      Letter('Y'),
                      Letter('Z'),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Letter extends StatelessWidget {
  final String letter;
  const Letter(this.letter);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          FlutterPluginTts.speak(letter.toLowerCase());
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

