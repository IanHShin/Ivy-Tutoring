import 'package:flutter/material.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';

void main() => runApp(pwononsyasyon());

class pwononsyasyon extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<pwononsyasyon> {
  final tf1 = TextEditingController();
  double _value = 4.0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("English"),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Card(
              child: Container(
                padding: EdgeInsets.all(0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Pronunciation",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 30.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(0.0),
                      child: Slider(
                        value: _value,
                        min: 1.0,
                        max: 8.0,
                        divisions: 6,
                        activeColor: Colors.teal,
                        inactiveColor: Colors.teal[200],
                        label: 'Chwazi vitès pawòl la',
                        onChanged: (double value) {
                          setState(() {
                            _value = value;
                          });
                        },
                        semanticFormatterCallback: (double Value) {
                          return '${Value.round()}';
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text("Slow"),
                        Text("Medium"),
                        Text("Fast\n"),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        '\nEkri mo Anglè ou bezwen konn pwononse a.\n',
                        style: TextStyle(fontSize: 14, color: Colors.teal),
                      ),
                    ),
                    TextField(
                      controller: tf1,
                      autofocus: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal)),
                        labelText: 'Ekri mo a',
                        labelStyle: const TextStyle(color: Colors.amberAccent),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: (verifye),
                      child: Container(
                        child: Center(
                          child: Icon(
                            Icons.volume_up,
                            size: 40,
                          ),
                        ),
                        color: Color(0xFFFFC107),
                        margin: EdgeInsets.only(top: 10.0),
                        width: double.infinity,
                        height: 80.0,
                      ),
                    ),
                  ],
                ),
              ),
              elevation: 200,
            ),
          ),
        ),
      ),
    );
  }

  verifye() {
    FlutterPluginTts.setSpeechRate(_value / 10);
    FlutterPluginTts.setLanguage("en-US");
    FlutterPluginTts.speak(tf1.text.toString());
  }
}
