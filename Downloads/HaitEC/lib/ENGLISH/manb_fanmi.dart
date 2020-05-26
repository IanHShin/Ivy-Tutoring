import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(manb_fanmi());

class manb_fanmi extends StatelessWidget {
  Widget build(BuildContext context) {
    FlutterPluginTts.setLanguage("en-US");
    FlutterPluginTts.setSpeechRate(0.4);

    return Scaffold(
      appBar: AppBar(
        title: Text("English"),
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
                      "FAMILY MEMBERS",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 25.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Say('Mother', 'Manman'),
                      Say('Mom', 'Manman'),
                      Say('Father', 'Papa'),
                      Say('Dad', 'Papa'),
                      Say('Parent', 'Paran'),
                      Say('Children', 'Pitit yo'),
                      Say('son', 'Pitit gason'),
                      Say('Dauhghter', 'Pitit fi'),
                      Say('Sister', 'Sè'),
                      Say('Brother', 'Frè'),
                      Say('Grandfather', 'Gran papa'),
                      Say('Grandparent', 'Gran paran'),
                      Say('Grandson', 'Pitit pitit (gason)'),
                      Say('Granddaughter', 'Pitit pitit (fi)'),
                      Say('Grandchild', 'Pitit pitit'),
                      Say('Aunt', 'Matant'),
                      Say('Uncle', 'Tonton'),
                      Say('Niece', 'Nyès'),
                      Say('Nephew', 'Neve'),
                      Say('Cousin', 'Kouzen'),
                      Say('Cousin', 'Kouzin'),
                      Say('Husband', 'Mari'),
                      Say('Wife', 'Madanm'),
                      Say('Sister-in-law', 'Bèl sè'),
                      Say('Brother-in-law', 'Bò frè'),
                      Say('Mother-in-law', 'Bèl mè'),
                      Say('Father-in-law', 'Bò pè'),
                      Say('fiancé', 'Fiyanse (gason)'),
                      Say('Fiancée', 'Fiyanse (fi)'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}

class Say extends StatelessWidget {
  final String angle;
  final String kreyol;
  const Say(this.angle, this.kreyol);

  @override
  Widget build(BuildContext context) {
    FlutterPluginTts.setLanguage("en-US");
    return Container(
      height: ScreenUtil.instance.setHeight(270),
      child: Card(
        child: GestureDetector(
          onTap: () {
            FlutterPluginTts.speak(angle);
          },
          child: Container(
            padding: EdgeInsets.all(0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ListTile(
                  title: Text(
                    angle,
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text(
                    kreyol,
                    style: TextStyle(fontSize: 15),
                  ),
                  leading: Icon(Icons.play_arrow),
                )
              ],
            ),
          ),
        ),
        color: Colors.teal[10],
      ),
    );
  }
}
