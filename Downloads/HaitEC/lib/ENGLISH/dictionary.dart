import 'package:first_app/ENGLISH/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:random_words/random_words.dart';
import 'package:translator/translator.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';

void main() => runApp(dictionary());

class dictionary extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<dictionary> {
  var search_tf = TextEditingController();
  var definition_tf = TextEditingController();
  var definition_of_word = TextEditingController();
  var example_tf = TextEditingController();
  var example_of_word = TextEditingController();
  var recent_words = TextEditingController();
  var recent_tf = TextEditingController();
  var lexicalCategory_tf = TextEditingController();
  var lexicalCategory_of_word = TextEditingController();

  var recentSearchItems = [];
  int i;
  String language;

  Future<String> getData() async {
    clearScreen();
    FocusScope.of(context).requestFocus(FocusNode());

    if (dropdownvalue.trim() == "Spanish") {
      language = "es";
    } else {
      language = "en-us";
    }

    http.Response response = await http.get(
        Uri.encodeFull(
            "https://od-api.oxforddictionaries.com:443/api/v2/entries/$language/" +
                search_tf.text),
        headers: {
          "Accept": "application/json",
          "app_id": "6d62399e",
          "app_key": "2a3381f4d9f53cf6c531298733e2eea7",
        });

    var data = json.decode(response.body);

    recentSearchItems.add(search_tf.text);

    if (recentSearchItems.length < 3) {
      recent_tf.text = "Recent Search: ";
      recent_words.text = recentSearchItems
          .toString()
          .substring(1, recentSearchItems.toString().length - 1);
    } else {
      for (i = 1; i < 3; i++) {
        recent_words.text = recentSearchItems[recentSearchItems.length - 1] +
            ", " +
            recentSearchItems[recentSearchItems.length - 2] +
            ", " +
            recentSearchItems[recentSearchItems.length - 3];
      }
    }

    if (data['results'][0]['lexicalEntries'][0]["entries"][0]['senses'][0]
                ['definitions']
            .toString() !=
        null) {
      String definition = data['results'][0]['lexicalEntries'][0]["entries"][0]
              ['senses'][0]['definitions']
          .toString();
      definition_tf.text = "Definitions: ";
      definition_of_word.text = definition.substring(1, definition.length - 1);
    }

    if (data['results'][0]['lexicalEntries'][0]["entries"][0]['senses'][0]
                ['examples'][0]['text']
            .toString() !=
        null) {
      String example = data['results'][0]['lexicalEntries'][0]["entries"][0]
              ['senses'][0]['examples'][0]['text']
          .toString();
      example_tf.text = "Example: ";
      example_of_word.text = example.substring(0, example.length);
    }

    if (data['results'][0]['lexicalEntries'][0]['lexicalCategory']['text'] !=
        null) {
      String lexicalCat = data['results'][0]['lexicalEntries'][0]
              ['lexicalCategory']['text']
          .toString()
          .toLowerCase();
      lexicalCategory_tf.text = "Lexical Category: ";
      lexicalCategory_of_word.text = lexicalCat.substring(0, lexicalCat.length);
    }
    // results[0].lexicalEntries[1].lexicalCategory.text
    // results[0].lexicalEntries[0].lexicalCategory.text
  }

  String dropdownvalue = "English";

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.teal,
          child: Icon(Icons.volume_up),
          onPressed: () {
            String lang;
            if (dropdownvalue.trim() == "Spanish") {
              lang = "es-ES";
            } else {
              lang = "en-us";
            }
            FlutterPluginTts.setLanguage(lang);
            FlutterPluginTts.speak(search_tf.text);
          }),
      appBar: AppBar(
        title: Text("Dictionary"),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: new Container(
          padding: EdgeInsets.only(right: 8.0, left: 8.0, bottom: 40.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: ScreenUtil.instance.setWidth(350),
                      child: TextField(
                        enabled: false,
                        controller: recent_tf,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 15.0,
                          color: Colors.teal,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: TextField(
                          textAlign: TextAlign.left,
                          enabled: false,
                          controller: recent_words,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: <Widget>[
                    Text(
                      "Select a language: ",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    DropdownButton(
                      value: dropdownvalue,
                      onChanged: (String val) {
                        setState(() {
                          dropdownvalue = val;
                        });
                      },
                      items: <String>['English', 'Spanish']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    onEditingComplete: (){
                      getData();
                    },
                    autofocus: true,
                    controller: search_tf,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        focusColor: Colors.teal,
                        // prefixIcon: Icon(Icons.search),
                        hintText: "🔍 Search HaitEC's Dictionary..."),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    border: Border.all(width: 2, color: Colors.teal),
                  ),
                ),
                SizedBox(height: ScreenUtil.instance.setHeight(35)),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: FlatButton(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        Text(
                          " Search",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )
                      ],
                    ),
                    onPressed: () {
                      getData();
                    },
                  ),
                ),
                SizedBox(width: ScreenUtil.instance.setHeight(20)),
                TextField(
                  enabled: false,
                  controller: definition_tf,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 20.0,
                    color: Colors.teal,
                  ),
                ),
                TextField(
                  enabled: false,
                  minLines: 1,
                  maxLines: 10,
                  controller: definition_of_word,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 5),
                TextField(
                  enabled: false,
                  controller: example_tf,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 20.0,
                    color: Colors.teal,
                  ),
                ),
                TextField(
                  enabled: false,
                  minLines: 1,
                  maxLines: 10,
                  controller: example_of_word,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 5),
                TextField(
                  enabled: false,
                  controller: lexicalCategory_tf,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 20.0,
                    color: Colors.teal,
                  ),
                ),
                TextField(
                  enabled: false,
                  minLines: 1,
                  maxLines: 10,
                  controller: lexicalCategory_of_word,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  clearScreen() {
    definition_of_word.text = "";
    definition_tf.text = "";
    example_of_word.text = "";
    example_tf.text = "";
    lexicalCategory_of_word.text = "";
    lexicalCategory_tf.text = "";
  }
}
