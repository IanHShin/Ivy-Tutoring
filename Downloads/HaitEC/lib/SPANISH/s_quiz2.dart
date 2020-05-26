import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';

class s_quiz2 extends StatelessWidget {

  final controller = PageController();
  int count = 0;
  final tf1 = TextEditingController();
  final tf2 = TextEditingController();
  final tf3 = TextEditingController();
  final tf4 = TextEditingController();
  final tf5 = TextEditingController();
  final tf6 = TextEditingController();
  final tf7 = TextEditingController();
  final tf8 = TextEditingController();
  final tf9 = TextEditingController();
  final tf10 = TextEditingController();
  final tf11 = TextEditingController();
  final tf12 = TextEditingController();
  final tf13 = TextEditingController();
  final tf14 = TextEditingController();
  final tf15 = TextEditingController();
  final result = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return
      Scaffold(
          appBar: AppBar(title: Text("Español"), backgroundColor: Colors.teal),
          body: ListView(
            scrollDirection: Axis.vertical,
            physics: AlwaysScrollableScrollPhysics(),
            shrinkWrap: true,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(height: ScreenUtil.instance.setHeight(1660),
                    child: PageView(
                      children: <Widget>[
                        Center(
                          child: Card(
                            child: Center(
                              child: Column( crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Como se dice 'GATO' en Español?",
                                    style: TextStyle( fontSize: 20
                                    ),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Plátano"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Plátano");
                                          tf1.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Manzana"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Manzana");
                                          tf1.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Cama"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Cama");
                                          tf1.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Pastel"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Pastel");
                                          tf1.text=("✅");
                                        },
                                      ),
                                    ],
                                  ),
                                  TextField( textAlign: TextAlign.center,
                                    controller: tf1,
                                    enabled: false,
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text("1/15 Swipe..."),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Card(
                            child: Center(
                              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Como se dice 'KABANN' en Español?",
                                    style: TextStyle( fontSize: 20
                                    ),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Plátano"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Plátano");
                                          tf2.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Manzana"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Manzana");
                                          tf2.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Cama"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Cama");
                                          tf2.text=("✅");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Pastel"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Pastel");
                                          tf2.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  TextField( textAlign: TextAlign.center,
                                    controller: tf2,
                                    enabled: false,
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text("2/15  Swipe..."),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Card(
                            child: Center(
                              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Como se dice 'PIMAN' en Español?",
                                    style: TextStyle( fontSize: 20
                                    ),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Pimienta"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Pimienta");
                                          tf3.text=("✅");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Manzana"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Manzana");
                                          tf3.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Cama"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Cama");
                                          tf3.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Pastel"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Pastel");
                                          tf3.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  TextField( textAlign: TextAlign.center,
                                    controller: tf3,
                                    enabled: false,
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text("3/15  Swipe..."),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Card(
                            child: Center(
                              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Como se dice 'PEN' en Español?",
                                    style: TextStyle( fontSize: 20
                                    ),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Pan"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Pan");
                                          tf4.text=("✅");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Frijoles"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Frijoles");
                                          tf4.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Cama"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Cama");
                                          tf4.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Pastel"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Pastel");
                                          tf4.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  TextField( textAlign: TextAlign.center,
                                    controller: tf4,
                                    enabled: false,
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text("4/15  Swipe..."),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Card(
                            child: Center(
                              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Como se dice 'PWA' en Español?",
                                    style: TextStyle( fontSize: 20
                                    ),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Pan"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Pan");
                                          tf5.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Frijoles"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Frijoles");
                                          tf5.text=("✅");
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Cama"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Cama");
                                          tf5.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Pastel"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Pastel");
                                          tf5.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  TextField( textAlign: TextAlign.center,
                                    controller: tf5,
                                    enabled: false,
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text("5/15 Swipe..."),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Card(
                            child: Center(
                              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Como se dice 'POM' en Español?",
                                    style: TextStyle( fontSize: 20
                                    ),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Pan"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Pan");
                                          tf6.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Manzana"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Manzana");
                                          tf6.text=("✅");
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Cama"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Cama");
                                          tf6.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Pastel"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Pastel");
                                          tf6.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  TextField( textAlign: TextAlign.center,
                                    controller: tf6,
                                    enabled: false,
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text("6/15 Swipe..."),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Card(
                            child: Center(
                              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Como se dice 'Mayi' en Español?",
                                    style: TextStyle( fontSize: 20
                                    ),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Pan"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Pan");
                                          tf7.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Frijoles"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Frijoles");
                                          tf7.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Cebolla"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Cebolla");
                                          tf7.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Maíz"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Maíz");
                                          tf7.text=("✅");
                                        },
                                      ),
                                    ],
                                  ),
                                  TextField( textAlign: TextAlign.center,
                                    controller: tf7,
                                    enabled: false,
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text("7/15 Swipe..."),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Card(
                            child: Center(
                              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Como se dice 'ZONYON' en Español?",
                                    style: TextStyle( fontSize: 20
                                    ),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Pimienta"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Pimienta");
                                          tf8.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Frijoles"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Frijoles");
                                          tf8.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Cebolla"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Cebolla");
                                          tf8.text=("✅");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Maíz"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Maíz");
                                          tf8.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  TextField( textAlign: TextAlign.center,
                                    controller: tf8,
                                    enabled: false,
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text("8/15 Swipe..."),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Card(
                            child: Center(
                              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Como se dice 'ZORANJ' en Español?",
                                    style: TextStyle( fontSize: 20
                                    ),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Pan"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Pan");
                                          tf9.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Frijoles"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Frijoles");
                                          tf9.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Mango"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Mango");
                                          tf9.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Naranja"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Naranja");
                                          tf9.text=("✅");
                                        },
                                      ),
                                    ],
                                  ),
                                  TextField( textAlign: TextAlign.center,
                                    controller: tf9,
                                    enabled: false,
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text("9/15 Swipe..."),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Card(
                            child: Center(
                              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Como se dice 'Mango' en Español?",
                                    style: TextStyle( fontSize: 20
                                    ),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Cebolla"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Cebolla");
                                          tf10.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Frijoles"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Frijoles");
                                          tf10.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Mango"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Mango");
                                          tf10.text=("✅");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Naranja"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Naranja");
                                          tf10.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  TextField( textAlign: TextAlign.center,
                                    controller: tf10,
                                    enabled: false,
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text("10/15 Swipe..."),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Card(
                            child: Center(
                              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Como se dice 'REZEN' en Español?",
                                    style: TextStyle( fontSize: 20
                                    ),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Uva"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Uva");
                                          tf11.text=("✅");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Huevo"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Huevo");
                                          tf11.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Pescado"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Pescado");
                                          tf11.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Piña"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Piña");
                                          tf11.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  TextField( textAlign: TextAlign.center,
                                    controller: tf11,
                                    enabled: false,
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text("11/15 Swipe..."),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Card(
                            child: Center(
                              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Como se dice 'ANANA' en Español?",
                                    style: TextStyle( fontSize: 20
                                    ),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Uva"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Uva");
                                          tf12.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Huevo"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Huevo");
                                          tf12.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Pescado"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Pescado");
                                          tf12.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Piña"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Piña");
                                          tf12.text=("✅");
                                        },
                                      ),
                                    ],
                                  ),
                                  TextField( textAlign: TextAlign.center,
                                    controller: tf12,
                                    enabled: false,
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text("12/15 Swipe..."),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Card(
                            child: Center(
                              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Como se dice 'PWASON' en Español?",
                                    style: TextStyle( fontSize: 20
                                    ),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Uva"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Uva");
                                          tf13.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Huevo"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Huevo");
                                          tf13.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Pescado"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Pescado");
                                          tf13.text=("✅");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Piña"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Piña");
                                          tf13.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  TextField( textAlign: TextAlign.center,
                                    controller: tf13,
                                    enabled: false,
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text("13/15 Swipe..."),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Card(
                            child: Center(
                              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Como se dice 'ZE' en Español?",
                                    style: TextStyle( fontSize: 20
                                    ),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Uva"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Uva");
                                          tf14.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Huevo"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Huevo");
                                          tf14.text=("✅");
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Pescado"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Pescado");
                                          tf14.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Piña",),
                                        onTap: () {
                                          FlutterPluginTts.speak("Piña");
                                          tf14.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  TextField( textAlign: TextAlign.center,
                                    controller: tf14,
                                    enabled: false,
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text("14/15 Swipe..."),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Card(
                            child: Center(
                              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Como se dice 'DIRI' en Español?",
                                    style: TextStyle( fontSize: 20
                                    ),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Arroz",),
                                        onTap: () {
                                          FlutterPluginTts.speak("Arroz");
                                          tf15.text=("✅");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Huevo",),
                                        onTap: () {
                                          FlutterPluginTts.speak("Huevo");
                                          tf15.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Pescado"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Pescado");
                                          tf15.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Cebolla",),
                                        onTap: () {
                                          FlutterPluginTts.speak("Cebolla");
                                          tf15.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  TextField( textAlign: TextAlign.center,
                                    controller: tf15,
                                    enabled: false,
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text("15/15"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Card(
                            child: Center(
                              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("QUIZ 2", style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF212121),
                                  ),),
                                  SizedBox(height: 40),
                                  TextField( textAlign: TextAlign.center,
                                    controller: result,
                                    enabled: false,
                                    style: TextStyle(
                                      fontSize: 35,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      count = 0;
                                      if (tf1.text=="✅")
                                        count++;
                                      if (tf2.text=="✅")
                                        count++;
                                      if (tf3.text=="✅")
                                        count++;
                                      if (tf4.text=="✅")
                                        count++;
                                      if (tf5.text=="✅")
                                        count++;
                                      if (tf6.text=="✅")
                                        count++;
                                      if (tf7.text=="✅")
                                        count++;
                                      if (tf8.text=="✅")
                                        count++;
                                      if (tf9.text=="✅")
                                        count++;
                                      if (tf10.text=="✅")
                                        count++;
                                      if (tf11.text=="✅")
                                        count++;
                                      if (tf12.text=="✅")
                                        count++;
                                      if (tf13.text=="✅")
                                        count++;
                                      if (tf14.text=="✅")
                                        count++;
                                      if (tf15.text=="✅")
                                        count++;

                                      result.text=("Your Score: "+ count.toString() +"/15");
                                    },
                                    child: Container(
                                      child: Center(
                                          child: Text(
                                            'GET RESULT',
                                            style: TextStyle(
                                              fontSize: 25.0,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF212121),
                                            ),
                                          )),
                                      color: Color(0xFFFFC107),
                                      margin: EdgeInsets.only(top: 10.0),
                                      width: double.infinity,
                                      height: 80.0,
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                      scrollDirection: Axis.horizontal,
                      controller: controller,
                    ),
                  ),
                ],
              )
            ],
          )

      );
  }
}

class CARD extends StatelessWidget {
  final String text;
  final Color col = Colors.white;
  TextEditingController tf;

  CARD(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil.instance.setWidth(520),
      height: ScreenUtil.instance.setHeight(580),
      child: Card(
          color: col,
          child: new Container(
            alignment: Alignment.center,
            padding: new EdgeInsets.all(0.0),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(text),
              ],
            ),
          ),
          elevation: 2),
    );
  }
}