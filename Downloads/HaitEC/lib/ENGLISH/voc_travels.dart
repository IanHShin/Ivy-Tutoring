import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(voc_travels());

class voc_travels extends StatelessWidget {

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
                      VOCA('Trip', 'Vwayaj'),
                      VOCA('Travel', 'Vwayaj'),
                      VOCA('Traveler', 'Vwayajè'),
                      VOCA('Visitor', 'Vizitè'),
                      VOCA('Welcome', 'Byenvini'),
                      VOCA('Destination', 'Destinasyon'),
                      VOCA('Itinerary', 'Itinerè'),
                      VOCA('Passport', 'Paspò'),
                      VOCA('Plane ticket', 'Tikè avyon'),
                      VOCA('Boarding\npass', 'Pansyon\nanbakman'),
                      VOCA('Hotel', 'Otèl'),
                      VOCA('Room', 'Chanm'),
                      VOCA('Front dest;', 'Resepsyon'),
                      VOCA('Valid', 'Valid'),
                      VOCA('Expired', 'Ekspire'),
                      VOCA('Delayed', 'Anreta'),
                      VOCA('Car', 'Machin'),
                      VOCA('Train', 'Tren'),
                      VOCA('Boat', 'bato'),
                      VOCA('Plane', 'Avyon'),
                      VOCA('Notice', 'Avi'),
                      VOCA('Safety', 'Sekirite'),
                      VOCA('Security', 'Sekirite'),
                      VOCA('Warning', 'Avètisman'),
                      VOCA('Traffic', 'Blokis'),
                      VOCA('Seat Belt', 'Sentiwon\nsekirite'),
                      VOCA('Dangerous', 'Danjre'),
                      VOCA('Prohibited', 'Entèdi'),
                      VOCA('Tour', 'Tou'),
                      VOCA('Border', 'Frontyè'),
                      VOCA('Waves', 'Vag'),
                      VOCA('Port', 'Pò'),
                      VOCA('Tourist', 'Touris'),
                      VOCA('Distant', 'Byen lwen'),
                      VOCA('Weapon', 'Zam'),
                      VOCA('Elevators', 'Elevatè'),
                      VOCA('Suitcase', 'Malèt'),
                      VOCA('Ball field', 'Tèren'),
                      VOCA('Wall', 'Mi'),
                      VOCA('Gold', 'lò'),
                      VOCA('Pyramid', 'Piramid'),
                      VOCA('Coward', 'Lach'),
                      VOCA('Serious', 'Serye'),

                      SizedBox(height: 10),
                      Container(
                        child: Text(
                          "VERBS",
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
                      VOCA('To travel', 'Vwayaje'),
                      VOCA('To pack', 'Fè malèt'),
                      VOCA('To stay', 'Rete'),
                      VOCA('To leave', 'Pati'),
                      VOCA('To cancel', 'anile'),
                      VOCA('To sail', 'Navige'),
                      VOCA('To reserve', 'Rezève'),
                      VOCA('To pay', 'Peye'),
                      VOCA('To order', 'Kòmande'),
                      VOCA('To buy', 'Achte'),
                      VOCA('To visit', 'Vizite'),
                      VOCA('To return', 'Retounen'),
                      VOCA('To transfer', 'Transfere'),
                      VOCA('To phohibit', 'Entèdi'),
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
    Column(
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
                    Text(angle, style: TextStyle(fontSize: ScreenUtil.instance.setSp(60)),),
                  ],
                )
            ),
          ),
          SizedBox(width: ScreenUtil.instance.setWidth(18)),
          Container(
              color: Colors.white,
              width: ScreenUtil.instance.setWidth(520),
              height: 45,
              child:
              Row(
                children: <Widget>[
                  Icon(Icons.crop_din),
                  Text(kreyol, style: TextStyle(fontSize: ScreenUtil.instance.setSp(60))),
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

