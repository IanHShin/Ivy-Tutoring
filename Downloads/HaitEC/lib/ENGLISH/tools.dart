import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(tools());

class tools extends StatelessWidget {
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
                      "TOOLS AND EQUIPMENTS",
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
                      TOOLS('Tools', 'Zouti', 'images/tools.png'),
                      TOOLS('Screw', 'Vis', 'images/screw.png'),
                      TOOLS('Hammer', 'Mato', 'images/hammer.png'),
                      TOOLS('Axe', 'Rach', 'images/axe.png'),
                      TOOLS('Wrench', 'Kle', 'images/wrench.png'),
                      TOOLS('Saw', 'Goyin', 'images/saw.png'),
                      TOOLS('Adjusable Wrench', 'Ajistab',
                          'images/adjustable.png'),
                      TOOLS('Nail', 'Klou', 'images/nail.png'),
                      TOOLS('Allen', 'kle L', 'images/allen.png'),
                      TOOLS('Tape Measure', 'Mèt', 'images/measure.png'),
                      TOOLS('Plunger', 'vantouz', 'images/plunger.png'),
                      TOOLS('Spirit Level', 'Nivo', 'images/level.png'),
                      TOOLS('Pliers', 'Pens', 'images/pliers.png'),
                      TOOLS('Screwdriver', 'Tounvis', 'images/screwdriver.png'),
                      TOOLS('Glasses', 'Linèt', 'images/glasses.png'),
                      TOOLS('Shovel', 'Pèl', 'images/shovel.png'),
                      TOOLS('Ladder', 'Echèl', 'images/ladder.png'),
                      TOOLS('Scissors', 'Sizo', 'images/scissors.png'),
                      TOOLS('Pen', 'Plim', 'images/pen.png'),
                      TOOLS('Pencil', 'Kreyon', 'images/pencil.png'),
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

class TOOLS extends StatelessWidget {
  final String angle;
  final String kreyol;
  final String img;
  const TOOLS(this.angle, this.kreyol, this.img);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil.instance.setHeight(270),
      child: Card(
        child: InkWell(
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
                  trailing: Image.asset(
                    img,
                    width: 45,
                    color: Colors.black,
                  ),
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
