import 'package:flutter/material.dart';
import 'package:translator/translator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:first_app/MAIN/HomePage.dart';

void main() => runApp(ed());

class ed extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<ed> {
  final translator = GoogleTranslator();

  final tf1 = TextEditingController(text: "haitienglishcoding@gmail.com");
  final tf2 = TextEditingController();
  final tf3 = TextEditingController();
  final tf4 = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact us"),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        physics: AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.only(top: 10.0),
        children: <Widget>[
          Text(
            "Text us on whatsapp (+1 848 469 4216) for faster response.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Container(
            padding: EdgeInsets.all(5.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(5.0),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          enabled: false,
                          maxLines: 1,
                          controller: tf1,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.teal),
                            ),
                            labelText: "To :",
                            labelStyle: const TextStyle(color: Colors.teal),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          maxLines: 1,
                          autofocus: true,
                          controller: tf2,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.teal),
                            ),
                            hintText: "Subject :",
                            labelStyle: const TextStyle(color: Colors.teal),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          autofocus: true,
                          maxLines: 9,
                          minLines: 7,
                          controller: tf3,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.teal),
                            ),
                            hintText: "Message :",
                            labelStyle: const TextStyle(color: Colors.teal),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FloatingActionButton.extended(
                          icon: Icon(Icons.send),
                          backgroundColor: Colors.teal,
                          label: Text("Send"),
                          onPressed: () =>
                              sending(tf1.text, tf2.text, tf3.text),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  sending(String toMailId, String subject, String body) async {
    var url = 'mailto:$toMailId?subject=$subject&body=$body';
    if (await canLaunch(url)) {
      launch(url);
    } else {
      throw 'Nou paka aksede paj sa kounya';
    }
  }
}
