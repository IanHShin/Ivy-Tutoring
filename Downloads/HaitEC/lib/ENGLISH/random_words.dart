import 'package:flutter/material.dart';
import 'package:random_words/random_words.dart';
import 'package:translator/translator.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:firebase_admob/firebase_admob.dart';

void main() => runApp(random_words());

class random_words extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

final trans = GoogleTranslator();
var noun1_tf = new TextEditingController();
var noun2_tf = new TextEditingController();
var adj1_tf = new TextEditingController();
var adj2_tf = new TextEditingController();
var noun3_tf = new TextEditingController();

String noun1 = generateNoun().take(1).toString().replaceAll(")", "").substring(1).trim();
String noun2 = generateNoun().take(1).toString().replaceAll(")", "").substring(1).trim();
String noun3 = generateNoun().take(1).toString().replaceAll(")", "").substring(1).trim();
String adj1 = generateAdjective().take(1).toString().replaceAll(")", "").substring(1);
String adj2 = generateAdjective().take(1).toString().replaceAll(")", "").substring(1);


class _myAppState extends State<random_words> {
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) => getData());

    FirebaseAdMob.instance
        .initialize(appId: 'ca-app-pub-5567410113651073~4007866614');
    _bannerAd = createBannerAd()
      ..load()
      ..show();

    super.initState();
  }

  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    nonPersonalizedAds: true,
    keywords: <String>['This', 'That'],
  );

  BannerAd _bannerAd;


  BannerAd createBannerAd() {
    return BannerAd(
        adUnitId: 'ca-app-pub-5567410113651073/8712404787',
        size: AdSize.banner,
        listener: (MobileAdEvent event) {
          print("BannerAd $event");
        });
  }

  @override
  void dispose() {
    _bannerAd.dispose();
    super.dispose();
  }

  String b = generateNoun().take(3).toString().replaceAll(")", "").substring(1);
  String definition1;
  String definition2;
  String definition3;
  String definition4;
  String definition5;

  String app_id = "6d62399e";
  String app_key = "2a3381f4d9f53cf6c531298733e2eea7";

  Future<String> getData() async {
    CircularProgressIndicator();
    http.Response response1 = await http.get(
        Uri.encodeFull("https://od-api.oxforddictionaries.com:443/api/v2/entries/en-us/$noun1"),
        headers: {
          "Accept": "application/json",
          "app_id": app_id,
          "app_key": app_key,
        });
    http.Response response2 = await http.get(
        Uri.encodeFull("https://od-api.oxforddictionaries.com:443/api/v2/entries/en-us/$noun2"),
        headers: {
          "Accept": "application/json",
          "app_id": app_id,
          "app_key": app_key,
        });
    http.Response response3 = await http.get(
        Uri.encodeFull("https://od-api.oxforddictionaries.com:443/api/v2/entries/en-us/$noun3"),
        headers: {
          "Accept": "application/json",
          "app_id": app_id,
          "app_key": app_key,
        });
    http.Response response4 = await http.get(
        Uri.encodeFull("https://od-api.oxforddictionaries.com:443/api/v2/entries/en-us/$adj1"),
        headers: {
          "Accept": "application/json",
          "app_id": app_id,
          "app_key": app_key,
        });
    http.Response response5 = await http.get(
        Uri.encodeFull("https://od-api.oxforddictionaries.com:443/api/v2/entries/en-us/$adj2"),
        headers: {
          "Accept": "application/json",
          "app_id": app_id,
          "app_key": app_key,
        });



    var data1 = json.decode(response1.body);
    var data2 = json.decode(response2.body);
    var data3 = json.decode(response3.body);
    var data4 = json.decode(response4.body);
    var data5 = json.decode(response5.body);

    definition1 = data1['results'][0]['lexicalEntries'][0]["entries"][0]['senses'][0]['definitions'].toString();
    noun1_tf.text = definition1.substring(1, definition1.length-1);

    definition2 = data2['results'][0]['lexicalEntries'][0]["entries"][0]['senses'][0]['definitions'].toString();
    noun2_tf.text = definition2.substring(1, definition2.length-1);

    definition3 = data3['results'][0]['lexicalEntries'][0]["entries"][0]['senses'][0]['definitions'].toString();
    noun3_tf.text = definition3.substring(1, definition3.length-1);

    definition4 = data4['results'][0]['lexicalEntries'][0]["entries"][0]['senses'][0]['definitions'].toString();
    adj1_tf.text = definition4.substring(1, definition4.length-1);

    definition5 = data5['results'][0]['lexicalEntries'][0]["entries"][0]['senses'][0]['definitions'].toString();
    adj2_tf.text = definition5.substring(1, definition5.length-1);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("English"),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        children: <Widget>[
          Container(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      "Two adjectives\n",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 25.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textBox(adj1, adj1_tf),
                        SizedBox(
                          width: 15,
                        ),
                        textBox(adj2, adj2_tf),
                      ],
                    ),

                    SizedBox(height: 20),
                    Text(
                      "Three nouns\n",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 25.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textBox(noun1, noun1_tf),
                        SizedBox(
                          width: 15,
                        ),
                        textBox(noun2, noun2_tf),
                      ],
                    ),
                    Row(
                      children: [
                      textBox(noun3, noun3_tf),
                    ],),
                    // textBox(word, tf)
                    SizedBox(height: 50),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Widget textBox(String word, TextEditingController tf) {
    return Expanded(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(word, style: TextStyle(fontSize: 25)),
            SizedBox(
              height: 10,
            ),
            TextField(
              enabled: false,
              maxLines: 10,
              minLines: 3,
              controller: tf,
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
