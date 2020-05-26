import 'package:flutter/material.dart';
import 'package:translator/translator.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(kontak());

class kontak extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<kontak>{
  final translator = new GoogleTranslator();

  final tf1 = TextEditingController(text: "haitienglishcoding@gmail.com");
  final tf2 = TextEditingController();
  final tf3 = TextEditingController();
  final tf4 = TextEditingController();

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar( title: Text("KONTAKTE NOU"), backgroundColor: Colors.teal,
      ),

      body:
      ListView(
        scrollDirection: Axis.vertical,
        physics: AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.only(top: 15.0),
        children: <Widget>[
          Text("Kòman nou ka ede ou?", textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25, color: Colors.amberAccent),),
          new Container(padding: EdgeInsets.all(5.0),
            child: new Center(
              child: Column( mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  new Card(margin: EdgeInsets.all(5.0),child: Column(children: <Widget>[

                    TextField(
                      enabled: false,
                      maxLines: 1,
                      controller: tf1,
                      decoration: new InputDecoration(border: new OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.amberAccent)),
                        labelText: "To :",
                        labelStyle: const TextStyle(color: Colors.amberAccent),),
                    ),

                    Divider(),

                    TextField(
                      maxLines: 1,
                      autofocus: true,
                      controller: tf2,
                      decoration: new InputDecoration(border: new OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.amberAccent)),
                        labelText: "Subject :",
                        labelStyle: const TextStyle(color: Colors.amberAccent),),
                    ),

                    Divider(),

                    TextField(
                      maxLines: 9,
                      minLines: 7,
                      controller: tf3,
                      decoration: new InputDecoration(border: new OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.amberAccent)),
                        labelText: "Message :",
                        labelStyle: const TextStyle(color: Colors.amberAccent),),
                    ),

                    new  RaisedButton(child: Text("Send"), onPressed: () => sending(tf1.text, tf2.text, tf3.text)),

                    Divider(),

                    Text("Mesaj ou a ka nan 4 lang sa yo: Kreyòl, Anglè, Fransè ak Espanyòl.", textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.blueGrey),),

                    Divider(),

                  ],
                  ),
                  elevation: 200,),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  sending(String toMailId, String subject, String body)async{
    var url='mailto:$toMailId?subject=$subject&body=$body';
    if(await canLaunch(url)){
      launch(url);
    } else{
      throw 'Nou paka aksede paj sa kounya';
    }
  }
}
