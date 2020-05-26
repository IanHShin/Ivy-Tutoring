import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';

void main() => runApp(tes_odyo3());

class tes_odyo3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<tes_odyo3> {
  double _value = 4.0;
  @override
  void initState() {
    super.initState();
    FirebaseAdMob.instance.initialize(appId: 'ca-app-pub-5567410113651073~4007866614');
    _bannerAd = createBannerAd()..load();
    RewardedVideoAd.instance.listener =
        (RewardedVideoAdEvent event, {String rewardType, int rewardAmount}) {
      print("RewardedVideoAd event $event");
      if (event == RewardedVideoAdEvent.rewarded) {
        setState(() {
          _total += rewardAmount;
        });
      }
    };

    FirebaseAdMob.instance
        .initialize(appId: 'ca-app-pub-5567410113651073~4007866614');
    RewardedVideoAd.instance.load(
        adUnitId: 'ca-app-pub-5567410113651073/5229097914',
        targetingInfo: targetingInfo);
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
    super.dispose();
  }

  int _total;

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
  final tf16 = TextEditingController();
  final tf17 = TextEditingController();
  final tf18 = TextEditingController();
  final tf19 = TextEditingController();
  final tf20 = TextEditingController();
  final tf21 = TextEditingController();
  final tf22 = TextEditingController();
  final tf23 = TextEditingController();
  final tf24 = TextEditingController();
  final tf25 = TextEditingController();
  final tf26 = TextEditingController();
  final tf27 = TextEditingController();

  Widget build(BuildContext context) {
    FlutterPluginTts.setLanguage("en-US");
    FlutterPluginTts.setSpeechRate(_value / 10);

    return Scaffold(
        appBar: AppBar(
          title: Text("English"),
          backgroundColor: Colors.teal,
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          physics: AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.only(bottom: 10.0),
          children: <Widget>[
            Text(
              "EKRI MO OU TANDE A",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 30.0,
                color: Colors.teal,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 0.0, right: 3, left: 3),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                          bottom: 0, top: 7.0, right: 0, left: 0),
                      child: Text(
                        'Peze bouton "play" la pou\'w tande mo a.\n',
                        style: TextStyle(fontSize: 10, color: Colors.blue),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(0),
                      child: Slider(
                        value: _value,
                        min: 1.0,
                        max: 8.0,
                        divisions: 6,
                        activeColor: Colors.blue,
                        inactiveColor: Colors.amberAccent,
                        label: 'Chwazi vitès pawòl la',
                        onChanged: (double value) {
                          setState(() {
                            _value = value;
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text("Slow"),
                          Text("Medium"),
                          Text("Fast\n"),
                        ],
                      ),
                    ),
                    Divider(),
                    Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            controller: tf1,
                            autofocus: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                      BorderSide(color: Colors.amberAccent)),
                              labelText: 'Ekri mo a',
                              prefixIcon: IconButton(
                                  icon: Icon(
                                    Icons.headset,
                                  ),
                                  onPressed: null),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  Icons.play_circle_outline,
                                ),
                                onPressed: () {
                                  FlutterPluginTts.speak("Success");
                                },
                              ),
                              labelStyle:
                                  const TextStyle(color: Colors.amberAccent),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            controller: tf2,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                      BorderSide(color: Colors.amberAccent)),
                              labelText: 'Ekri mo a',
                              prefixIcon: IconButton(
                                  icon: Icon(Icons.headset), onPressed: null),
                              suffixIcon: IconButton(
                                icon: Icon(Icons.play_circle_outline),
                                onPressed: () {
                                  FlutterPluginTts.speak("Nothing");
                                },
                              ),
                              labelStyle:
                                  const TextStyle(color: Colors.amberAccent),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            controller: tf3,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                      BorderSide(color: Colors.amberAccent)),
                              labelText: 'Ekri mo a',
                              prefixIcon: IconButton(
                                  icon: Icon(Icons.headset), onPressed: null),
                              suffixIcon: IconButton(
                                icon: Icon(Icons.play_circle_outline),
                                onPressed: () {
                                  FlutterPluginTts.speak("Life");
                                },
                              ),
                              labelStyle:
                                  const TextStyle(color: Colors.amberAccent),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            controller: tf4,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                      BorderSide(color: Colors.amberAccent)),
                              labelText: 'Ekri mo a',
                              prefixIcon: IconButton(
                                  icon: Icon(Icons.headset), onPressed: null),
                              suffixIcon: IconButton(
                                icon: Icon(Icons.play_circle_outline),
                                onPressed: () {
                                  FlutterPluginTts.speak("Cofffee");
                                },
                              ),
                              labelStyle:
                                  const TextStyle(color: Colors.amberAccent),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            controller: tf5,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                      BorderSide(color: Colors.amberAccent)),
                              labelText: 'Ekri mo a',
                              prefixIcon: IconButton(
                                  icon: Icon(Icons.headset), onPressed: null),
                              suffixIcon: IconButton(
                                icon: Icon(Icons.play_circle_outline),
                                onPressed: () {
                                  FlutterPluginTts.speak("Chocolate");
                                },
                              ),
                              labelStyle:
                                  const TextStyle(color: Colors.amberAccent),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            controller: tf6,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                      BorderSide(color: Colors.amberAccent)),
                              labelText: 'Ekri mo a',
                              prefixIcon: IconButton(
                                  icon: Icon(Icons.headset), onPressed: null),
                              suffixIcon: IconButton(
                                icon: Icon(Icons.play_circle_outline),
                                onPressed: () {
                                  FlutterPluginTts.speak("Boy");
                                },
                              ),
                              labelStyle:
                                  const TextStyle(color: Colors.amberAccent),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            controller: tf7,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                      BorderSide(color: Colors.amberAccent)),
                              labelText: 'Ekri mo a',
                              prefixIcon: IconButton(
                                  icon: Icon(Icons.headset), onPressed: null),
                              suffixIcon: IconButton(
                                icon: Icon(Icons.play_circle_outline),
                                onPressed: () {
                                  FlutterPluginTts.speak("Problem");
                                },
                              ),
                              labelStyle:
                                  const TextStyle(color: Colors.amberAccent),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            controller: tf8,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                      BorderSide(color: Colors.amberAccent)),
                              labelText: 'Ekri mo a',
                              prefixIcon: IconButton(
                                  icon: Icon(Icons.headset), onPressed: null),
                              suffixIcon: IconButton(
                                icon: Icon(Icons.play_circle_outline),
                                onPressed: () {
                                  FlutterPluginTts.speak("Sister");
                                },
                              ),
                              labelStyle:
                                  const TextStyle(color: Colors.amberAccent),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            controller: tf9,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                      BorderSide(color: Colors.amberAccent)),
                              labelText: 'Ekri mo a',
                              prefixIcon: IconButton(
                                  icon: Icon(Icons.headset), onPressed: null),
                              suffixIcon: IconButton(
                                icon: Icon(Icons.play_circle_outline),
                                onPressed: () {
                                  FlutterPluginTts.speak("Monday");
                                },
                              ),
                              labelStyle:
                                  const TextStyle(color: Colors.amberAccent),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            controller: tf10,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                      BorderSide(color: Colors.amberAccent)),
                              labelText: 'Ekri mo a',
                              prefixIcon: IconButton(
                                  icon: Icon(Icons.headset), onPressed: null),
                              suffixIcon: IconButton(
                                icon: Icon(Icons.play_circle_outline),
                                onPressed: () {
                                  FlutterPluginTts.speak("January");
                                },
                              ),
                              labelStyle:
                                  const TextStyle(color: Colors.amberAccent),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            controller: tf11,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                      BorderSide(color: Colors.amberAccent)),
                              labelText: 'Ekri mo a',
                              prefixIcon: IconButton(
                                  icon: Icon(Icons.headset), onPressed: null),
                              suffixIcon: IconButton(
                                icon: Icon(Icons.play_circle_outline),
                                onPressed: () {
                                  FlutterPluginTts.speak("Heart");
                                },
                              ),
                              labelStyle:
                                  const TextStyle(color: Colors.amberAccent),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            controller: tf12,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                      BorderSide(color: Colors.amberAccent)),
                              labelText: 'Ekri mo a',
                              prefixIcon: IconButton(
                                  icon: Icon(Icons.headset), onPressed: null),
                              suffixIcon: IconButton(
                                icon: Icon(Icons.play_circle_outline),
                                onPressed: () {
                                  FlutterPluginTts.speak("Hurt");
                                },
                              ),
                              labelStyle:
                                  const TextStyle(color: Colors.amberAccent),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            controller: tf13,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                      BorderSide(color: Colors.amberAccent)),
                              labelText: 'Ekri mo a',
                              prefixIcon: IconButton(
                                  icon: Icon(Icons.headset), onPressed: null),
                              suffixIcon: IconButton(
                                icon: Icon(Icons.play_circle_outline),
                                onPressed: () {
                                  FlutterPluginTts.speak("Available");
                                },
                              ),
                              labelStyle:
                                  const TextStyle(color: Colors.amberAccent),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            controller: tf14,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                      BorderSide(color: Colors.amberAccent)),
                              labelText: 'Ekri mo a',
                              prefixIcon: IconButton(
                                  icon: Icon(Icons.headset), onPressed: null),
                              suffixIcon: IconButton(
                                icon: Icon(Icons.play_circle_outline),
                                onPressed: () {
                                  FlutterPluginTts.speak("Natural");
                                },
                              ),
                              labelStyle:
                                  const TextStyle(color: Colors.amberAccent),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            controller: tf15,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                      BorderSide(color: Colors.amberAccent)),
                              labelText: 'Ekri mo a',
                              prefixIcon: IconButton(
                                  icon: Icon(Icons.headset), onPressed: null),
                              suffixIcon: IconButton(
                                icon: Icon(Icons.play_circle_outline),
                                onPressed: () {
                                  FlutterPluginTts.speak("Beautiful");
                                },
                              ),
                              labelStyle:
                                  const TextStyle(color: Colors.amberAccent),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            controller: tf16,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                      BorderSide(color: Colors.amberAccent)),
                              labelText: 'Ekri mo a',
                              prefixIcon: IconButton(
                                  icon: Icon(Icons.headset), onPressed: null),
                              suffixIcon: IconButton(
                                icon: Icon(Icons.play_circle_outline),
                                onPressed: () {
                                  FlutterPluginTts.speak("Hundreds");
                                },
                              ),
                              labelStyle:
                                  const TextStyle(color: Colors.amberAccent),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            controller: tf17,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                      BorderSide(color: Colors.amberAccent)),
                              labelText: 'Ekri mo a',
                              prefixIcon: IconButton(
                                  icon: Icon(Icons.headset), onPressed: null),
                              suffixIcon: IconButton(
                                icon: Icon(Icons.play_circle_outline),
                                onPressed: () {
                                  FlutterPluginTts.speak("Probation");
                                },
                              ),
                              labelStyle:
                                  const TextStyle(color: Colors.amberAccent),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            controller: tf18,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                      BorderSide(color: Colors.amberAccent)),
                              labelText: 'Ekri mo a',
                              prefixIcon: IconButton(
                                  icon: Icon(Icons.headset), onPressed: null),
                              suffixIcon: IconButton(
                                icon: Icon(Icons.play_circle_outline),
                                onPressed: () {
                                  FlutterPluginTts.speak("Speak");
                                },
                              ),
                              labelStyle:
                                  const TextStyle(color: Colors.amberAccent),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            controller: tf19,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                      BorderSide(color: Colors.amberAccent)),
                              labelText: 'Ekri mo a',
                              prefixIcon: IconButton(
                                  icon: Icon(Icons.headset), onPressed: null),
                              suffixIcon: IconButton(
                                icon: Icon(Icons.play_circle_outline),
                                onPressed: () {
                                  FlutterPluginTts.speak("Talk");
                                },
                              ),
                              labelStyle:
                                  const TextStyle(color: Colors.amberAccent),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            controller: tf20,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                      BorderSide(color: Colors.amberAccent)),
                              labelText: 'Ekri mo a',
                              prefixIcon: IconButton(
                                  icon: Icon(Icons.headset), onPressed: null),
                              suffixIcon: IconButton(
                                icon: Icon(Icons.play_circle_outline),
                                onPressed: () {
                                  FlutterPluginTts.speak("School");
                                },
                              ),
                              labelStyle:
                                  const TextStyle(color: Colors.amberAccent),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (verifye),
                      child: Container(
                        child: Center(
                            child: Text(
                          'VERIFYE',
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
          ],
        ));
  }

   String Trim(String a) {
    return a.toString().toLowerCase().trim().split(" ").join("");
  }
  void grade (String result, TextEditingController tf ){
    if(tf.text.toString().toLowerCase().trim().split(" ").join("")==result){
      tf.text = tf.text +" ✅";
    } else if (tf.text.toString()==""||tf.text.toString().toLowerCase().trim()==result+" ✅"|| tf.text.endsWith(" ❌")){}
    else tf.text = tf.text +" ❌";
  }
  verifye() {
    RewardedVideoAd.instance.show();
    grade('success', tf1);
    grade('nothing', tf2);
    grade('life', tf3);
    grade('coffee', tf4);
    grade('chocolate', tf5);
    grade('boy', tf6);
    grade('problem', tf7);
    grade('sister', tf8);
    grade('monday', tf9);
    grade('january', tf10);
    grade('heart', tf11);
    grade('hurt', tf12);
    grade('available', tf13);
    grade('natural', tf14);
    grade('beautiful', tf15);
    grade('beautiful', tf16);
    grade('probation', tf17);
    grade('speak', tf18);
    grade('talk', tf19);
    grade('school', tf20);
  }

}
