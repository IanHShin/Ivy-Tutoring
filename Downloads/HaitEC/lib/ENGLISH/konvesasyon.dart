import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:flutter/cupertino.dart';
import 'package:first_app/goTo.dart';

void main() => runApp(konvesasyon());

class konvesasyon extends StatelessWidget {

  Widget build(BuildContext context) {
    FlutterPluginTts.setLanguage("en-US");
    FlutterPluginTts.setSpeechRate(0.4);

    return Scaffold(
      appBar: AppBar(
        title: Text("English"),
        backgroundColor: Colors.teal,
      ),

      body:
      ListView(
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
                      "CONVERSATION 1",
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
                  Column( mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      PersonA('Hello! My name is Willy.','Alo, non mwen se Willy.'),
                      PersonB('Good morning Willy!', 'Bonjou Willy!'),
                      PersonB('My name is Jeeyou.', 'Non mwen se Jeeyou.'),
                      PersonA('How are you Jeeyou?','Koman ou ye Jenny?'),
                      PersonB('I am fine and you?', 'Mwen byen e ou?'),
                      PersonA('I am fine.', 'Mwen byen.'),
                      PersonB('Nice to meet you Willy!', 'Mwen byen e ou?'),
                      PersonA('Nice to meet you too!', 'Mwen byen.')

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

class PersonA extends StatelessWidget{
  final String angle;
  final String kreyol;
  const PersonA(this.angle, this.kreyol);

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.only(right: 70),
        height: ScreenUtil.instance.setHeight(210), child:
    Card(child: InkWell(onTap: () {
      FlutterPluginTts.speak(angle);
    } ,
      child: Column(
          children: <Widget>[
            ListTile(
              title:Text(angle, style: TextStyle(fontSize: 17),),
             // subtitle: Text(kreyol, style: TextStyle(fontSize: 14),),
              trailing: Icon(Icons.play_arrow),
            )
          ],),),
      elevation: 240, color: Colors.amber, )
    );

  }
}

class PersonB extends StatelessWidget{
  final String angle;
  final String kreyol;
  const PersonB(this.angle, this.kreyol);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 70),
        height: ScreenUtil.instance.setHeight(210), child:
    Card(child: InkWell(onTap: () {
      FlutterPluginTts.speak(angle);
    } ,
      child: Column(
          children: <Widget>[
            ListTile(
              title:Text(angle, style: TextStyle(fontSize: 17), textAlign: TextAlign.end),
              //subtitle: Text(kreyol, style: TextStyle(fontSize: 14), textAlign: TextAlign.end),
              leading: Icon(Icons.play_arrow),

            )
          ],),),
      elevation: 240, color: Colors.teal,)
    );

  }
}
