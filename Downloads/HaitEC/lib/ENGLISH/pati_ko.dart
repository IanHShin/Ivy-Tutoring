import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(pati_ko());

class pati_ko extends StatelessWidget {

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
                      "BODY PARTS",
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
                      Pati_ko('Head', 'Tèt', 'images/head.png'),
                      Pati_ko('Hair', 'Cheve', 'images/hair.png'),
                      Pati_ko('Eyes','Je', 'images/eyes.png'),
                      Pati_ko('Nose', 'Nen', 'images/nose.png'),
                      Pati_ko('Mouth','Bouch', 'images/mouth.png'),
                      Pati_ko('Tongue','Lang', 'images/tongue.png'),
                      Pati_ko('Teeth', 'Dan', 'images/teeth.png'),
                      Pati_ko('Lips', 'Lèv', 'images/lips.png'),
                      Pati_ko('Neck','Kou', 'images/neck.png'),
                      Pati_ko('Hand','Men', 'images/hand.png'),
                      Pati_ko('Finger','dwèt', 'images/finger.png'),
                      Pati_ko('Ear','Zorèy', 'images/ears.png'),
                      Pati_ko('Chest','Pwatrin', 'images/chest.png'),
                      Pati_ko('Lungs','Poumon', 'images/lungs.png'),
                      Pati_ko('Heart','Kè', 'images/heart.png'),
                      Pati_ko('Arm','Bra', 'images/arm.png'),
                      Pati_ko('Leg','Janm', 'images/leg.png'),
                      Pati_ko('Bone','Zo', 'images/bone.png'),
                      Pati_ko('Feet','Pye', 'images/feet.png'),
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

class Pati_ko extends StatelessWidget{
  final String angle;
  final String kreyol;
  final String img;
  const Pati_ko(this.angle, this.kreyol, this.img);

  @override
  Widget build(BuildContext context) {
    return Container(height: ScreenUtil.instance.setHeight(270), child:
    Card(child: GestureDetector(onTap: () {
      FlutterPluginTts.speak(angle);
    } ,
      child: Container(
        padding:  EdgeInsets.all(0.0),
        child:  Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              title:Text(angle, style: TextStyle(fontSize: 20),),
              subtitle: Text(kreyol, style: TextStyle(fontSize: 15),),
              leading: Icon(Icons.play_arrow),
              trailing: Image.asset(img),
            )
          ],),),
    ),
      color: Colors.teal[10], )
    );

  }
}

