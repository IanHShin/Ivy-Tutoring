import 'package:flutter/material.dart';
import 'package:translator/translator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(classroom());

class classroom extends StatelessWidget {
  final trans = GoogleTranslator();
  Widget build(BuildContext context) {
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
                      "IN THE CLASSROOOM",
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
                      Say('Student', 'Elèv'),
                      Say('Teacher', 'Pwofesè'),
                      Say('Classmate', 'Kamarad de klas'),
                      Say('Book', 'Liv'),
                      Say('Notebook', 'Kaye'),
                      Say('Pencil', 'Kreyon'),
                      Say('Pen', 'Plim'),
                      Say('Eraser', 'Efasè'),
                      Say('Ruler', 'Règ'),
                      Say('Chair', 'Chèz'),
                      Say('Chalk', 'Lakrè'),
                      Say('Window', 'Fenèt'),
                      Say('Wastebasket', 'Poubèl'),
                      Say('Light', 'Limyè'),
                      Say('Wall', 'Mi'),
                      Say('Floor', 'Atè'),
                      Say('Ceiling', 'Plafon'),
                      Say('Desk', 'Biro'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 50),
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
        child: InkWell(
          onTap: () {
            FlutterPluginTts.setLanguage("en-US");
            FlutterPluginTts.setSpeechRate(0.4);
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
