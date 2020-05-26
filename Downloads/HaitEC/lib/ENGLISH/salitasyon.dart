import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(salitasyon());

class salitasyon extends StatelessWidget {
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
                      "GREETINGS",
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
                      Salitasyon('Hello', 'Alo'),
                      Salitasyon('Good morning', 'Bonjou'),
                      Salitasyon('Good afternoon', 'Bon apremidi'),
                      Salitasyon('Good evening', 'Bonswa'),
                      Salitasyon('Good night', 'Bon nwit'),
                      Salitasyon('How are you?', 'Koman ou ye?'),
                      Salitasyon('I am fine and you?.', 'Mwen byen e ou?'),
                      Salitasyon('How was your day', 'Koman jounen ou te ye?'),
                      Salitasyon('How was your night?', 'Koman nwit ou te ye?'),
                      Salitasyon('It was good.', 'Li te byen.'),
                      Salitasyon(
                          'What\'s up?', 'Sak pase? / Sak gen de nouvo?'),
                      Salitasyon('What\'s new', 'Sak gen de nouvo?'),
                      Salitasyon('How is your family?', 'Koman fanmi ou ye?'),
                      Salitasyon('What is your name?', 'Koman ou rele?'),
                      Salitasyon('My name is Nixon', 'Mwen rele Nixon'),
                      Salitasyon('Nice to meet you!', 'M kontan rekonèt ou'),
                      Salitasyon('Good job!', 'Bon travay!'),
                      Salitasyon('Congratulations!', 'Felisitasyon'),
                      Salitasyon('Thank you!', 'Mèsi!'),
                      Salitasyon('See you soon!', 'Nap wè byento!'),
                      Salitasyon('See you later!', 'Nap wè pita!'),
                      Salitasyon('Good bye!', 'Orevwa!'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 0),
        ],
      ),
    );
  }
}

class Salitasyon extends StatelessWidget {
  final String angle;
  final String kreyol;
  const Salitasyon(this.angle, this.kreyol);
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
                  trailing: Icon(Icons.play_arrow),
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
