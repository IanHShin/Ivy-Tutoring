import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(voc_personalites());

class voc_personalites extends StatelessWidget {

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
            padding: EdgeInsets.all(3),
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 5),
                  Container(
                    child: Text(
                      "VOCABULARIES",
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
                      SizedBox(height: 5),
                      VOCA('Boring', 'Annwiyan'),
                      VOCA('Patient', 'Pasyan'),
                      VOCA('Impatient', 'Enpasyan'),
                      VOCA('Naive', 'Nayiv'),
                      VOCA('Personality', 'Pèsonalite'),
                      VOCA('Strict', 'Strik'),
                      VOCA('Affectionate', 'Afektye'),
                      VOCA('Jealous', 'Jalou'),
                      VOCA('Curious', 'Kirye'),
                      VOCA('Liar', 'Mantè'),
                      VOCA('Funny', 'Komik'),
                      VOCA('Funny', 'dwòl'),
                      VOCA('Proud', 'Fyè'),
                      VOCA('Shy', 'Timid'),
                      VOCA('Sensible', 'Sansib'),
                      VOCA('Sensitive', 'Sansib'),
                      VOCA('Traditional', 'Tradisyonèl'),
                      VOCA('Anxious', 'Enkyè'),
                      VOCA('Depressed', 'Deprime'),
                      VOCA('Upset', 'Fache'),
                      VOCA('Mad', 'Fache'),
                      VOCA('Excited', 'Eksite'),
                      VOCA('Worried', 'Enkyete'),
                      VOCA('Alone', 'Sèl (pou kont li)'),
                      VOCA('Calm', 'Kalm'),
                      VOCA('Happy', 'Kontan'),
                      VOCA('Sad', 'Tris'),
                      VOCA('Brave', 'Brav'),
                      VOCA('Chatty', 'Pale Anpil'),
                      VOCA('Clever', 'Entelijan'),
                      VOCA('Smart', 'Entelijan'),
                      VOCA('Weak', 'Fèb'),
                      VOCA('Friendly', 'Amikal'),
                      VOCA('Interesting', 'Enteresan'),
                      VOCA('Kind', 'Janti'),
                      VOCA('Nice', 'Senpa'),
                      VOCA('Wise', 'Saj'),
                      VOCA('Coward', 'Lach'),
                      VOCA('Strong', 'Fò'),
                      VOCA('Serious', 'Serye'),
                      VOCA('Lazy', 'Parese'),


                      SizedBox(height: 10),
                      Container(
                        child: Text(
                          "ADJECTIVES",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      VOCA('To be', 'Se'),
                      VOCA('To love', 'Renmen'),
                      VOCA('To like', ' Renmen\n(Apresye)'),
                      VOCA('To hate', 'Rayi'),
                      VOCA('To adore', 'Adore'),
                      VOCA('To feel', 'Santi'),
                      VOCA('To impress', 'Enpresyone'),
                      VOCA('To argue', 'diskite'),
                      VOCA('To go out', 'Soti'),
                      VOCA('To propose', 'Propoze'),
                      VOCA('To kiss', 'Bo'),
                      VOCA('To become', 'Devni'),
                      VOCA('To reject', 'Refize'),
                      VOCA('To be sick', 'Malad'),
                      VOCA('To be jealous', 'Jalou'),

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

class VOCA extends StatelessWidget{
  final String angle;
  final String kreyol;
  const VOCA(this.angle, this.kreyol,);

  @override
  Widget build(BuildContext context) {
    return
    Column( crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
      Container(
      height: ScreenUtil.instance.setHeight(135),
      child:
      Row(
        children: <Widget>[
          GestureDetector(
            onTap: (){
              FlutterPluginTts.setLanguage('en-US');
              FlutterPluginTts.speak(angle);
            },
            child: Container(
                color: Colors.white,
                width: ScreenUtil.instance.setWidth(520),
                height: 45,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.play_arrow),
                    Text(angle, style: TextStyle(fontSize: ScreenUtil.instance.setSp(60),),),
                  ],
                )
            ),
          ),
          SizedBox(width: ScreenUtil.instance.setWidth(18),),
          Container(
              color: Colors.white,
              width: ScreenUtil.instance.setWidth(520),
              height: 45,
              child:
              Row(
                children: <Widget>[
                  Icon(Icons.crop_din),
                  Text(kreyol, style: TextStyle(fontSize: ScreenUtil.instance.setSp(60),)),
                ],
              )
          )
        ],
      ) ,
    ) ,
        SizedBox(height: 10)
      ],
    );


  }
}

