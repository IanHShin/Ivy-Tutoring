import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:flutter/cupertino.dart';
void main() => runApp(days_months());
class days_months extends StatelessWidget {
  Widget build(BuildContext context) {
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
                      "DAYS",
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
                      Salitasyon('Monday','Lendi'),
                      Salitasyon('Tuesday', 'Madi'),
                      Salitasyon('Wednesday','Mèkredi'),
                      Salitasyon('Thursday', 'Jedi'),
                      Salitasyon('Friday','Vandredi'),
                      Salitasyon('Saturday', 'Samdi'),
                      Salitasyon('Sunday', 'Dimanch'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Text(
                      "MONTHS",
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
                      Salitasyon('January','Janvye'),
                      Salitasyon('February', 'Fevriye'),
                      Salitasyon('March','Mas'),
                      Salitasyon('April', 'Avril'),
                      Salitasyon('May ','Me'),
                      Salitasyon('June', 'Jen'),
                      Salitasyon('July', 'Jiyè'),
                      Salitasyon('August','Out'),
                      Salitasyon('September', 'Septanm'),
                      Salitasyon('October','Oktob'),
                      Salitasyon('November', 'Novanm'),
                      Salitasyon('December ','Desanm'),
                      ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Text(
                      "SEASONS",
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
                      Salitasyon('Spring','Prentan'),
                      Salitasyon('Summer', 'Ete'),
                      Salitasyon('Fall','Otòn'),
                      Salitasyon('Winter', 'Ivè'),
                    ],
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
class Salitasyon extends StatelessWidget{
  final String angle;
  final String kreyol;
  const Salitasyon(this.angle, this.kreyol);
  @override
  Widget build(BuildContext context) {
    return Container(height: ScreenUtil.instance.setHeight(260), child:
    Card(child: InkWell(onTap: () {
      FlutterPluginTts.setLanguage("en-US");
      FlutterPluginTts.speak(angle);
    } ,
      child: Container(
        padding:  EdgeInsets.all(0.0),
        child:  Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              title:Text(angle, style: TextStyle(fontSize: 20),),
              subtitle: Text(kreyol, style: TextStyle(fontSize: 15),),
              trailing: Icon(Icons.play_arrow),
            )
          ],),),
    ),
      color: Colors.teal[10], )
    );
  }
}
