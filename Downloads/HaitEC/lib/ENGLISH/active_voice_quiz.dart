import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:firebase_admob/firebase_admob.dart';

void main() => runApp(active_voice_quiz());

class active_voice_quiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<active_voice_quiz> {
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

  static var good1='fghj';
   String good2 = "ok";
  static String good3 = "";
  static String good4 = "";
  static String good5 = "";
  static String good6 = "";
  static String good7 = "";
  static String good8 = "";
  static String good9 = "";
  static String good10 = "";

  String a="Active";
  String p="Passive";


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("English"),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        children: <Widget>[
          new Container(
            padding: EdgeInsets.all(0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 10),
                new Container(
                  child: Text(
                    "ACTIVE/PASSIVE VOICE QUIZ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 20.0,
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Choose the correct answer.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 18.0,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),

            Card(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Text("Jeeyou ate an apple last night.", style: TextStyle(fontSize: 18),),
                  RadioButtonGroup(
                    labelStyle: TextStyle( color: Colors.teal,
                    ),
                    activeColor: Color(0xFFFFC107),
                    labels: <String>[
                      a , p,
                    ],
                    onSelected: (String selected) => good1 = selected.toString().trim(),
                  ),
                  TextField(
                    textAlign: TextAlign.center, enabled: false, controller: tf1,
                  ),
                ],
              ), elevation: 0,
            ),

                Card(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Text("I talked to my girlfriend yesteday.", style: TextStyle(fontSize: 18),),
                      RadioButtonGroup(
                        labelStyle: TextStyle( color: Colors.teal,
                        ),
                        activeColor: Color(0xFFFFC107),
                        labels: <String>[
                          a , p,
                        ],
                        onSelected: (String selected) => good2 = selected.toString().trim(),
                      ),
                      TextField(
                        textAlign: TextAlign.center, enabled: false, controller: tf2,
                      ),
                    ],
                  ), elevation: 0,
                ),

                Card(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Text("An apple was eaten by me last night.", style: TextStyle(fontSize: 18),),
                      RadioButtonGroup(
                        labelStyle: TextStyle( color: Colors.teal,
                        ),
                        activeColor: Color(0xFFFFC107),
                        labels: <String>[
                          a , p,
                        ],
                        onSelected: (String selected) => good3 = selected.toString().trim(),
                      ),
                      TextField(
                        textAlign: TextAlign.center, enabled: false, controller: tf3,
                      ),
                    ],
                  ), elevation: 0,
                ),

                Card(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Text("Nixon called his mother.", style: TextStyle(fontSize: 18),),
                      RadioButtonGroup(
                        labelStyle: TextStyle( color: Colors.teal,
                        ),
                        activeColor: Color(0xFFFFC107),
                        labels: <String>[
                          a , p,
                        ],
                        onSelected: (String selected) => good4 = selected.toString().trim(),
                      ),
                      TextField(
                        textAlign: TextAlign.center, enabled: false, controller: tf4,
                      ),
                    ],
                  ), elevation: 0,
                ),

                Card(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Text("The children were punished by the teacher.", style: TextStyle(fontSize: 18),),
                      RadioButtonGroup(
                        labelStyle: TextStyle( color: Colors.teal,
                        ),
                        activeColor: Color(0xFFFFC107),
                        labels: <String>[
                          a , p,
                        ],
                        onSelected: (String selected) => good5 = selected.toString().trim(),
                      ),
                      TextField(
                        textAlign: TextAlign.center, enabled: false, controller: tf5,
                      ),
                    ],
                  ), elevation: 0,
                ),

                Card(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Text("Chessou was talking to her by my house.", style: TextStyle(fontSize: 18),),
                      RadioButtonGroup(
                        labelStyle: TextStyle( color: Colors.teal,
                        ),
                        activeColor: Color(0xFFFFC107),
                        labels: <String>[
                          a , p,
                        ],
                        onSelected: (String selected) => good6 = selected.toString().trim(),
                      ),
                      TextField(
                        textAlign: TextAlign.center, enabled: false, controller: tf6,
                      ),
                    ],
                  ), elevation: 0,
                ),

                Card(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Text("They changed the flat tire.", style: TextStyle(fontSize: 18),),
                      RadioButtonGroup(
                        labelStyle: TextStyle( color: Colors.teal,
                        ),
                        activeColor: Color(0xFFFFC107),
                        labels: <String>[
                          a , p,
                        ],
                        onSelected: (String selected) => good7 = selected.toString().trim(),
                      ),
                      TextField(
                        textAlign: TextAlign.center, enabled: false, controller: tf7,
                      ),
                    ],
                  ), elevation: 0,
                ),

                Card(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Text("The house will be cleaned by me everyday.", style: TextStyle(fontSize: 18),),
                      RadioButtonGroup(
                        labelStyle: TextStyle( color: Colors.teal,
                        ),
                        activeColor: Color(0xFFFFC107),
                        labels: <String>[
                          a , p,
                        ],
                        onSelected: (String selected) => good8 = selected.toString().trim(),
                      ),
                      TextField(
                        textAlign: TextAlign.center, enabled: false, controller: tf8,
                      ),
                    ],
                  ), elevation: 0,
                ),

                Card(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Text("Informations will be provided to you by them.", style: TextStyle(fontSize: 18),),
                      RadioButtonGroup(
                        labelStyle: TextStyle( color: Colors.teal,
                        ),
                        activeColor: Color(0xFFFFC107),
                        labels: <String>[
                          a , p,
                        ],
                        onSelected: (String selected) => good9 = selected.toString().trim(),
                      ),
                      TextField(
                        textAlign: TextAlign.center, enabled: false, controller: tf9,
                      ),
                    ],
                  ), elevation: 0,
                ),

                Card(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Text("They will give you instructions.", style: TextStyle(fontSize: 18),),
                      RadioButtonGroup(
                        labelStyle: TextStyle( color: Colors.teal,
                        ),
                        activeColor: Color(0xFFFFC107),
                        labels: <String>[
                          a , p,
                        ],
                        onSelected: (String selected) => good10 = selected.toString().trim(),
                      ),
                      TextField(
                        textAlign: TextAlign.center, enabled: false, controller: tf10,
                      ),
                    ],
                  ), elevation: 0,
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
          SizedBox(height: 50),
        ],
      ),
    );
  }

  verifye() {
    RewardedVideoAd.instance.show();
    if (good1.toString() == a) {
      tf1.text = "✅";
    } else
      tf1.text = "❌";

    if (good2 == a) {
      tf2.text = "✅";
    } else
      tf2.text = "❌";

    if (good3 == p) {
      tf3.text = ("✅");
    } else
      tf3.text = ("❌");

    if (good4 == a) {
      tf4.text = ("✅");
    } else
      tf4.text = ("❌");

    if (good5 == p) {
      tf5.text = ("✅");
    } else
      tf5.text = ("❌");

    if (good6 == a) {
      tf6.text = ("✅");
    } else
      tf6.text = ("❌");

    if (good7 == a) {
      tf7.text = ("✅");
    } else
      tf7.text = ("❌");

    if (good8 == p) {
      tf8.text = ("✅");
    } else
      tf8.text = ("❌");

    if (good9 == p) {
      tf9.text = ("✅");
    } else
      tf9.text = ("❌");

    if (good10 == a) {
      tf10.text = ("✅");
    } else
      tf10.text = ("❌");
  }
}

