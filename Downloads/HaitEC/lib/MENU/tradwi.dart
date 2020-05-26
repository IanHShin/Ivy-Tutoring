import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:translator/translator.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:flutter/services.dart';

void main() => runApp(tradwi());

class tradwi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}
class _myAppState extends State<tradwi> {

  @override
  void initState() {
    FirebaseAdMob.instance
        .initialize(appId: 'ca-app-pub-5567410113651073~4007866614');
    _bannerAd = createBannerAd()
      ..load()
      ..show();
    _interstitialAd = createInterstitialAd()
      ..load()
      ..show();
    super.initState();
  }

  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    nonPersonalizedAds: true,
    keywords: <String>['This', 'That'],
  );

  BannerAd _bannerAd;
  InterstitialAd _interstitialAd;

  BannerAd createBannerAd() {
    return BannerAd(
        adUnitId: 'ca-app-pub-5567410113651073/8712404787',
        size: AdSize.banner,
        listener: (MobileAdEvent event) {
          print("BannerAd $event");
        });
  }
  InterstitialAd createInterstitialAd() {
    return InterstitialAd(
        adUnitId: 'ca-app-pub-5567410113651073/3761145214',
        listener: (MobileAdEvent event) {
          print("IntersttialAd $event");
        });
  }

  @override
  void dispose() {
    _bannerAd.dispose();
    _interstitialAd.dispose();
    super.dispose();
  }

  final trans = GoogleTranslator();

  final tf1 = TextEditingController();
  final tf2 = TextEditingController();
  String from = '';
  String to = '';
  var _list = [
    'Afrikaans',
    'Albanian',
    'Amharic',
    'Arabic',
    'Armenian',
    'Azerbaijani',
    'Basque',
    'Belarusian',
    'Bengali',
    'Bosnian',
    'Bulgarian',
    'Catalan',
    'Cebuano',
    'Chichewa',
    'Chinese Simplified',
    'Chinese Traditional',
    'Corsican',
    'Croatian',
    'Czech',
    'Danish',
    'Dutch',
    'English',
    'Esperanto',
    'stonian',
    'Filipino',
    'Finnish',
    'French',
    'Frisian',
    'Galician',
    'Georgian',
    'German',
    'Greek',
    'Gujarati',
    'Haitian Creole',
    'Hausa',
    'Hawaiian',
    'Hebrew',
    'Hindi',
    'Hmong',
    'Hungarian',
    'Icelandic',
    'Igbo',
    'Indonesian',
    'Irish',
    'Italian',
    'Japanese',
    'Kannada',
    'Kazakh',
    'Khmer',
    'Korean',
    'Kurdish',
    'Kyrgyz',
    'Lao',
    'Latin',
    'Latvian',
    'Lithuanian',
    'Luxembourgish',
    'Macedonian',
    'Malagasy',
    'Malay',
    'Malayalam',
    'Maltese',
    'Maori',
    'Marathi',
    'Mongolian',
    'Myanmar',
    'Nepali',
    'Norwegian',
    'Pashto',
    'Persian',
    'Polish',
    'Portuguese',
    'Punjabi',
    'Romanian',
    'Russian',
    'Samoan',
    'Scots Gaelic',
    'Serbian',
    'Sesotho',
    'Shona',
    'Sindhi',
    'Sinhala',
    'Slovak',
    'Slovenian',
    'Somali',
    'Spanish',
    'Sundanese',
    'Swahili',
    'Swedish',
    'Tajik',
    'Tamil',
    'Telugu',
    'Thai',
    'Turkish',
    'Ukrainian',
    'Urdu',
    'Uzbek',
    'Vietnamese',
    'Welsh',
    'Xhosa',
    'Yiddish',
    'Yoruba',
    'Zulu'
  ];

  var _Selected1 = 'English';
  var _Selected2 = 'Haitian Creole';


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HaitEC Translation"),
        backgroundColor: Colors.teal,
      ),
      body: Container(
          padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 2),
          child: ListView(
            scrollDirection: Axis.vertical,
            physics: AlwaysScrollableScrollPhysics(),
            shrinkWrap: true,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(0.0),
                child: Column(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              child: DropdownButton<String>(
                                isExpanded: true,
                                items: _list.map((String dropDownStringItem) {
                                  return DropdownMenuItem<String>(
                                    value: dropDownStringItem,
                                    child: Text(dropDownStringItem),
                                  );
                                }).toList(),
                                onChanged: (String _value) {
                                  setState(() {
                                    this._Selected1 = _value;
                                  });
                                },
                                value: _Selected1,
                              ),
                            ),
                            SizedBox(width: 5),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                 String temp = _Selected1;
                                 _Selected1 = _Selected2;
                                 _Selected2 = temp;
                                },);
                              },
                              child: Icon(Icons.compare_arrows)

                            ),

                            SizedBox(width: 5),
                            Expanded(
                              child: DropdownButton<String>(
                                isExpanded: true,
                                items: _list.map((String dropDownStringItem) {
                                  return DropdownMenuItem<String>(
                                    value: dropDownStringItem,
                                    child: Text(dropDownStringItem),
                                  );
                                }).toList(),
                                onChanged: (String _value) {
                                  setState(() {
                                    this._Selected2 = _value;
                                  });
                                },
                                value: _Selected2,
                              ),
                              flex: 1,
                            ),
                          ],
                        ),
                        TextField(
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          textCapitalization: TextCapitalization.sentences,
                          minLines: 4,
                          maxLines: 5,
                          autofocus: true,
                          controller: tf1,
                          onChanged: (text) {
                            _Switch();
                             tf2.clear();
                            if (tf1.text.trim()!="") {
                              trans
                                  .translate(tf1.text.toLowerCase(), from: from, to: to)
                                  .then((s) {
                                tf2.text = (s);
                              });
                            }
                            if (tf1.text.trim() == ""){
                              tf2.clear();
                            }
                          },
                          decoration: InputDecoration(
                            hintText: 'Enter your text here',
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.amberAccent)),
                            labelStyle:
                                const TextStyle(color: Colors.amberAccent),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                                color: Colors.teal,
                                onPressed: () {
                                  Clipboard.setData(new ClipboardData(
                                      text: tf1.text.toString()));
                                },
                                icon: Icon(Icons.content_copy)),
                            IconButton(
                                color: Colors.teal,
                                onPressed: () {
                                  tf1.clear();
                                  tf2.clear();
                                },
                                icon: Icon(Icons.clear)),
                          ],
                        ),
                        SizedBox(height: 1),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Column(
                            children: <Widget>[
                              TextField(
                                keyboardType: null,
                                enabled: false,
                                maxLines: 5,
                                minLines: 4,
                                controller: tf2,
                                decoration: InputDecoration(
                                  fillColor: Colors.blue,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(15),
                                          topLeft: Radius.circular(15))),
                                  labelStyle: TextStyle(
                                      color: Colors.teal, fontSize: 25),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  IconButton(
                                      color: Colors.teal,
                                      onPressed: () {
                                        Clipboard.setData(new ClipboardData(
                                            text: tf2.text.toString()));
                                      },
                                      icon: Icon(Icons.content_copy)),
                                  IconButton(
                                      color: Colors.teal,
                                      onPressed: () {
                                        tf2.clear();
                                      },
                                      icon: Icon(Icons.clear)),
                                  IconButton(
                                      color: Colors.teal,
                                      onPressed: () {
                                        FlutterPluginTts.speak(
                                            tf2.text.toString());
                                      },
                                      icon: Icon(Icons.volume_up))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }

  void _Switch() {
    FlutterPluginTts.setLanguage('en-US');
    switch (_Selected1) {
      case 'Afrikaans':
        from = 'af';
        break;
      case 'Albanian':
        from = 'sq';
        break;
      case 'Amharic':
        from = 'am';
        break;
      case 'Arabic':
        from = 'ar';
        break;
      case 'Armenian':
        from = 'hy';
        break;
      case 'Azerbaijani':
        from = 'az';
        break;
      case 'Basque':
        from = 'eu';
        break;
      case 'Belarusian':
        from = 'be';
        break;
      case 'Bengali':
        from = 'bn';
        break;
      case 'Bosnian':
        from = 'bs';
        break;
      case 'Bulgarian':
        from = 'bg';
        break;
      case 'Catalan':
        from = 'ca';
        break;
      case 'Cebuano':
        from = 'ceb';
        break;
      case 'Chichewa':
        from = 'ny';
        break;
      case 'Chinese Simplified':
        from = 'zh-CN';
        break;
      case 'Chinese Traditional':
        from = 'zh-TW';
        break;
      case 'Corsican':
        from = 'co';
        break;
      case 'Croatian':
        from = 'hr';
        break;
      case 'Czech':
        from = 'cs';
        break;
      case 'Danish':
        from = 'da';
        break;
      case 'Dutch':
        from = 'nl';
        break;
      case 'English':
        from = 'en';
        break;
      case 'Esperanto':
        from = 'eo';
        break;
      case 'Estonian':
        from = 'et';
        break;
      case 'Filipino':
        from = 'tl';
        break;
      case 'Finnish':
        from = 'fi';
        break;
      case 'French':
        from = 'fr';
        break;
      case 'Frisian':
        from = 'fry';
        break;
      case 'Galician':
        from = 'gl';
        break;
      case 'Georgian':
        from = 'ka';
        break;
      case 'German':
        from = 'de';
        break;
      case 'Greek':
        from = 'el';
        break;
      case 'Gujarati':
        from = 'gu';
        break;
      case 'Haitian Creole':
        from = 'ht';
        break;
      case 'Hausa':
        from = 'ha';
        break;
      case 'Hawaiian':
        from = 'haw';
        break;
      case 'Hebrew':
        from = 'iw';
        break;
      case 'Hindi':
        from = 'hi';
        break;
      case 'Hmong':
        from = 'hm';
        break;
      case 'Hungarian':
        from = 'hu';
        break;
      case 'Icelandic':
        from = 'is';
        break;
      case 'Igbo':
        from = 'ig';
        break;
      case 'Indonesian':
        from = 'id';
        break;
      case 'Irish':
        from = 'ga';
        break;
      case 'Italian':
        from = 'it';
        break;
      case 'Japanese':
        from = 'ja';
        break;
      case 'Kannada':
        from = 'kn';
        break;
      case 'Kazakh':
        from = 'kk';
        break;
      case 'Khmer':
        from = 'km';
        break;
      case 'Korean':
        from = 'ko';
        break;
      case 'Kurdish':
        from = 'ku';
        break;
      case 'Kyrgyz':
        from = 'ky';
        break;
      case 'Lao':
        from = 'lo';
        break;
      case 'Latin':
        from = 'la';
        break;
      case 'Latvian':
        from = 'lv';
        break;
      case 'Lithuanian':
        from = 'lt';
        break;
      case 'Luxembourgish':
        from = 'lb';
        break;
      case 'Macedonian':
        from = 'mk';
        break;
      case 'Malagasy':
        from = 'mg';
        break;
      case 'Malay':
        from = 'ms';
        break;
      case 'Malayalam':
        from = 'ml';
        break;
      case 'Maltese':
        from = 'mt';
        break;
      case 'Maori':
        from = 'mi';
        break;
      case 'Marathi':
        from = 'mr';
        break;
      case 'Mongolian':
        from = 'mn';
        break;
      case 'Myanmar':
        from = 'my';
        break;
      case 'Nepali':
        from = 'ne';
        break;
      case 'Norwegian':
        from = 'no';
        break;
      case 'Pashto':
        from = 'ps';
        break;
      case 'Persian':
        from = 'fa';
        break;
      case 'Polish':
        from = 'pl';
        break;
      case 'Portuguese':
        from = 'pt';
        break;
      case 'Punjabi':
        from = 'pa';
        break;
      case 'Romanian':
        from = 'ro';
        break;
      case 'Russian':
        from = 'ru';
        break;
      case 'Samoan':
        from = 'ig';
        break;
      case 'Scots Gaelic':
        from = 'gd';
        break;
      case 'Serbian':
        from = 'sr';
        break;
      case 'Sesotho':
        from = 'st';
        break;
      case 'Shona':
        from = 'sn';
        break;
      case 'Sindhi':
        from = 'sd';
        break;
      case 'Sinhala':
        from = 'si';
        break;
      case 'Slovak':
        from = 'sk';
        break;
      case 'Slovenian':
        from = 'sl';
        break;
      case 'Somali':
        from = 'so';
        break;
      case 'Spanish':
        from = 'es';
        break;
      case 'Sundanese':
        from = 'su';
        break;
      case 'Swahili':
        from = 'sw';
        break;
      case 'Swedish':
        from = 'sv';
        break;
      case 'Tajik':
        from = 'tg';
        break;
      case 'Tamil':
        from = 'ta';
        break;
      case 'Telugu':
        from = 'te';
        break;
      case 'Thai':
        from = 'th';
        break;
      case 'Turkish':
        from = 'tr';
        break;
      case 'Ukrainian':
        from = 'uk';
        break;
      case 'Urdu':
        from = 'ur';
        break;
      case 'Uzbek':
        from = 'uz';
        break;
      case 'Vietnamese':
        from = 'vi';
        break;
      case 'Welsh':
        from = 'cy';
        break;
      case 'Xhosa':
        from = 'xh';
        break;
      case 'Yiddish':
        from = 'yi';
        break;
      case 'Yoruba':
        from = 'yo';
        break;
      case 'Zulu':
        from = 'zu';
        break;
    }

    switch (_Selected2) {
      case 'Afrikaans':
        to = 'af';
        FlutterPluginTts.setLanguage('af-ZA');
        break;
      case 'Albanian':
        to = 'sq';
        FlutterPluginTts.setLanguage('sq-AL');
        break;
      case 'Amharic':
        to = 'am';
        break;
      case 'Arabic':
        to = 'ar';
        FlutterPluginTts.setLanguage('ar-EG');
        break;
      case 'Armenian':
        to = 'hy';
        FlutterPluginTts.setLanguage('hy-AM');
        break;
      case 'Azerbaijani':
        to = 'az';
        break;
      case 'Basque':
        to = 'eu';
        break;
      case 'Belarusian':
        to = 'be';
        break;
      case 'Bengali':
        to = 'bn';
        break;
      case 'Bosnian':
        to = 'bs';
        break;
      case 'Bulgarian':
        to = 'bg';
        break;
      case 'Catalan':
        to = 'ca';
        break;
      case 'Cebuano':
        to = 'ceb';
        break;
      case 'Chichewa':
        to = 'ny';
        break;
      case 'Chinese Simplified':
        to = 'zh-CN';
        break;
      case 'Chinese Traditional':
        to = 'zh-TW';
        break;
      case 'Corsican':
        to = 'co';
        break;
      case 'Croatian':
        to = 'hr';
        break;
      case 'Czech':
        to = 'cs';
        break;
      case 'Danish':
        to = 'da';
        break;
      case 'Dutch':
        to = 'nl';
        break;
      case 'English':
        to = 'en';
        FlutterPluginTts.setLanguage('en-US');
        break;
      case 'Esperanto':
        to = 'eo';
        break;
      case 'Estonian':
        to = 'et';
        break;
      case 'Filipino':
        to = 'tl';
        break;
      case 'Finnish':
        to = 'fi';
        break;
      case 'French':
        to = 'fr';
        FlutterPluginTts.setLanguage('fr-FR');
        break;
      case 'Frisian':
        to = 'fry';
        break;
      case 'Galician':
        to = 'gl';
        break;
      case 'Georgian':
        to = 'ka';
        FlutterPluginTts.setLanguage('ka-GE');
        break;
      case 'German':
        to = 'de';
        FlutterPluginTts.setLanguage('de-DE');
        break;
      case 'Greek':
        to = 'el';
        FlutterPluginTts.setLanguage('el-GR');
        break;
      case 'Gujarati':
        to = 'gu';
        break;
      case 'Haitian Creole':
        to = 'ht';
        FlutterPluginTts.setLanguage('fr-FR');
        break;
      case 'Hausa':
        to = 'ha';
        break;
      case 'Hawaiian':
        to = 'haw';
        break;
      case 'Hebrew':
        to = 'iw';
        FlutterPluginTts.setLanguage('he-IL');
        break;
      case 'Hindi':
        to = 'hi';
        FlutterPluginTts.setLanguage('hi-IN');
        break;
      case 'Hmong':
        to = 'hm';
        break;
      case 'Hungarian':
        to = 'hu';
        break;
      case 'Icelandic':
        to = 'is';
        break;
      case 'Igbo':
        to = 'ig';
        break;
      case 'Indonesian':
        to = 'id';
        break;
      case 'Irish':
        to = 'ga';
        break;
      case 'Italian':
        to = 'it';
        FlutterPluginTts.setLanguage('it-IT');
        break;
      case 'Japanese':
        to = 'ja';
        FlutterPluginTts.setLanguage('ja-JP');
        break;
      case 'Kannada':
        to = 'kn';
        break;
      case 'Kazakh':
        to = 'kk';
        break;
      case 'Khmer':
        to = 'km';
        break;
      case 'Korean':
        to = 'ko';
        break;
      case 'Kurdish':
        to = 'ku';
        break;
      case 'Kyrgyz':
        to = 'ky';
        break;
      case 'Lao':
        to = 'lo';
        break;
      case 'Latin':
        to = 'la';
        break;
      case 'Latvian':
        to = 'lv';
        FlutterPluginTts.setLanguage('lv-LV');
        break;
      case 'Lithuanian':
        to = 'lt';
        break;
      case 'Luxembourgish':
        to = 'lb';
        break;
      case 'Macedonian':
        to = 'mk';
        break;
      case 'Malagasy':
        to = 'mg';
        break;
      case 'Malay':
        to = 'ms';
        break;
      case 'Malayalam':
        to = 'ml';
        break;
      case 'Maltese':
        to = 'mt';
        break;
      case 'Maori':
        to = 'mi';
        break;
      case 'Marathi':
        to = 'mr';
        break;
      case 'Mongolian':
        to = 'mn';
        break;
      case 'Myanmar':
        to = 'my';
        break;
      case 'Nepali':
        to = 'ne';
        FlutterPluginTts.setLanguage('ne-NE');
        break;
      case 'Norwegian':
        to = 'no';
        FlutterPluginTts.setLanguage('nn-NO');
        break;
      case 'Pashto':
        to = 'ps';
        break;
      case 'Persian':
        to = 'fa';
        break;
      case 'Polish':
        to = 'pl';
        break;
      case 'Portuguese':
        to = 'pt';
        FlutterPluginTts.setLanguage('pt-PT');
        break;
      case 'Punjabi':
        to = 'pa';
        break;
      case 'Romanian':
        to = 'ro';
        break;
      case 'Russian':
        to = 'ru';
        FlutterPluginTts.setLanguage('ru-RU');
        break;
      case 'Samoan':
        to = 'ig';
        break;
      case 'Scots Gaelic':
        to = 'gd';
        break;
      case 'Serbian':
        to = 'sr';
        break;
      case 'Sesotho':
        to = 'st';
        break;
      case 'Shona':
        to = 'sn';
        break;
      case 'Sindhi':
        to = 'sd';
        break;
      case 'Sinhala':
        to = 'si';
        break;
      case 'Slovak':
        to = 'sk';
        break;
      case 'Slovenian':
        to = 'sl';
        break;
      case 'Somali':
        to = 'so';
        break;
      case 'Spanish':
        to = 'es';
        FlutterPluginTts.setLanguage('es-ES');
        break;
      case 'Sundanese':
        to = 'su';
        break;
      case 'Swahili':
        to = 'sw';
        break;
      case 'Swedish':
        to = 'sv';
        break;
      case 'Tajik':
        to = 'tg';
        break;
      case 'Tamil':
        to = 'ta';
        break;
      case 'Telugu':
        to = 'te';
        break;
      case 'Thai':
        to = 'th';
        break;
      case 'Turkish':
        to = 'tr';
        break;
      case 'Ukrainian':
        to = 'uk';
        break;
      case 'Urdu':
        to = 'ur';
        break;
      case 'Uzbek':
        to = 'uz';
        break;
      case 'Vietnamese':
        to = 'vi';
        FlutterPluginTts.setLanguage('vi-VN');
        break;
      case 'Welsh':
        to = 'cy';
        break;
      case 'Xhosa':
        to = 'xh';
        break;
      case 'Yiddish':
        to = 'yi';
        break;
      case 'Yoruba':
        to = 'yo';
        break;
      case 'Zulu':
        to = 'zu';
        FlutterPluginTts.setLanguage('zu-ZA');
        break;
    }
  }
}

/*import 'package:flutter/material.dart';
import 'package:translator/translator.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';


void main() => runApp(tradwi());

class tradwi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<tradwi> {
  final trans = GoogleTranslator();

  final tf1 = TextEditingController(text: "English");
  final tf2 = TextEditingController(text: "Kreyòl");
  final tf3 = TextEditingController();
  final tf4 = TextEditingController();
  final tf5 = TextEditingController();

  @override
  dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text("English"),
          backgroundColor: Colors.teal,
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          physics: AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.only(top: 15.0),
          children: <Widget>[
            Text(
              "Tradiksyon",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 30.0,
                color: Colors.teal,
                fontWeight: FontWeight.bold,
              ),
            ),

            Row( children: <Widget>[
              SizedBox(width: 10,), Icon(Icons.wifi),
               Text(" INTERNET CONNECTION REQUIRED ",
                style: TextStyle(fontSize: 10, color: Colors.teal),)
            ],),

            new Container(
              padding: EdgeInsets.all(5.0),
              child: new Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Card(
                      margin: EdgeInsets.all(5.0),
                      child: Column(
                        children: <Widget>[
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Container(
                                width: 100,
                                child: TextField(
                                  controller: tf1,
                                  enabled: false,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              new IconButton(
                                icon: Icon(Icons.compare_arrows),
                                onPressed: () {
                                  if (tf1.text == "English") {
                                    tf1.text = "Kreyòl";
                                    tf2.text = "English";
                                  } else if (tf2.text == "English") {
                                    tf2.text = "Kreyòl";
                                    tf1.text = "English";
                                  }
                                },
                              ),
                              new Container(
                                width: 100,
                                child: TextField(
                                  controller: tf2,
                                  enabled: false,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          TextField(
                            maxLines: 1,
                            autofocus: true,
                            controller: tf3,
                            onChanged: (text) {

                               if(tf3.text==""){
                                  tf4.clear();
                                }
                                if (tf1.text == "English") {
                                  trans.translate(tf3.text, from: 'en', to: 'ht').then((s) {
                                    tf4.text = (s);
                                  });
                                }
                                if (tf1.text == "Kreyòl") {
                                  trans.translate(tf3.text, from: 'ht', to: 'en').then((s) {
                                    tf4.text = (s);
                                  });
                                }
                              },
                            decoration: new InputDecoration(
                              border: new OutlineInputBorder(
                                  borderSide: new BorderSide(
                                      color: Colors.amberAccent)),
                              labelStyle:
                                  const TextStyle(color: Colors.amberAccent),
                            ),
                          ),

                          Row( mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.volume_up), onPressed: (){
                                FlutterPluginTts.setSpeechRate(0.3);
                                FlutterPluginTts.speak(tf3.text);
                              },
                              ),
                            ],
                          ),

                          SizedBox(height: 15,),
                          TextField(
                            enabled: false,
                            maxLines: 5,
                            minLines: 3,
                            controller: tf4,
                            decoration: new InputDecoration(
                              border: new OutlineInputBorder(
                                  borderSide: new BorderSide(
                                      color: Colors.amberAccent)),
                              labelStyle:
                                  const TextStyle(color: Colors.amberAccent),
                            ),
                          ),
                      Row( mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.volume_up), onPressed: (){
                                FlutterPluginTts.setSpeechRate(0.3);
                                FlutterPluginTts.speak(tf4.text);
                            },
                          ),
                        ],
                      )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));

  }
}

 */
