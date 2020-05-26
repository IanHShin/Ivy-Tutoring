import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

void main() => runApp(tes_grame());

class tes_grame extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<tes_grame> {
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
    _bannerAd = createBannerAd()
      ..load()
      ..show();
    _interstitialAd = createInterstitialAd()
      ..load();
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
    _interstitialAd.dispose();
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

  static String good1 = "";
  static String good2 = "";
  static String good3 = "";
  static String good4 = "";
  static String good5 = "";
  static String good6 = "";
  static String good7 = "";
  static String good8 = "";
  static String good9 = "";
  static String good10 = "";
  static String good11 = "";
  static String good12 = "";
  static String good13 = "";
  static String good14 = "";
  static String good15 = "";
  static String good16 = "";
  static String good17 = "";
  static String good18 = "";
  static String good19 = "";
  static String good20 = "";

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
//          new Container(
//              child: new
          Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                new Container(
                  child: Text(
                    "CHWAZI BON REPONS LAN",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 25.0,
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  color: Colors.teal,
                  child: RadioButtonGroup(
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    activeColor: Colors.amberAccent,
                    labels: <String>[
                      "I eat right now.",
                      "I am eating right now."
                    ],
                    onSelected: (String selected) =>
                    good1 = selected.toString().trim(),
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  enabled: false,
                  controller: tf1,
                ),
                Divider(),
                Card(
                  color: Colors.teal,
                  child: RadioButtonGroup(
                    labelStyle: TextStyle(color: Colors.white),
                    activeColor: Colors.amberAccent,
                    labels: <String>[
                      "I was talked to Jenny Yesterday.",
                      "I was talking to Jenny Yesterday."
                    ],
                    onSelected: (String selected) =>
                    good2 = selected.toString().trim(),
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  enabled: false,
                  controller: tf2,
                ),
                Divider(),
                Card(
                  color: Colors.teal,
                  child: RadioButtonGroup(
                    labelStyle: TextStyle(color: Colors.white),
                    activeColor: Colors.amberAccent,
                    labels: <String>[
                      "Will has been living there for 4 years.",
                      "Will lives there for 4 years."
                    ],
                    onSelected: (String selected) =>
                    good3 = selected.toString().trim(),
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  enabled: false,
                  controller: tf3,
                ),
                Divider(),
                Card(
                  color: Colors.teal,
                  child: RadioButtonGroup(
                    labelStyle: TextStyle(color: Colors.white),
                    activeColor: Colors.amberAccent,
                    labels: <String>[
                      "I am go to church every Sunday.",
                      "I go to church every Sunday."
                    ],
                    onSelected: (String selected) =>
                    good4 = selected.toString().trim(),
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  enabled: false,
                  controller: tf4,
                ),
                Divider(),
                Card(
                  color: Colors.teal,
                  child: RadioButtonGroup(
                    labelStyle: TextStyle(color: Colors.white),
                    activeColor: Colors.amberAccent,
                    labels: <String>[
                      "I read and eat at the same time.",
                      "I am read and eat at the same time."
                    ],
                    onSelected: (String selected) =>
                    good5 = selected.toString().trim(),
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  enabled: false,
                  controller: tf5,
                ),
                Divider(),
                Card(
                  color: Colors.teal,
                  child: RadioButtonGroup(
                    labelStyle: TextStyle(color: Colors.white),
                    activeColor: Colors.amberAccent,
                    labels: <String>[
                      "Winnie call me Yesterday.",
                      "Winnie called me Yesterday."
                    ],
                    onSelected: (String selected) =>
                    good6 = selected.toString().trim(),
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  enabled: false,
                  controller: tf6,
                ),
                Divider(),
                Card(
                  color: Colors.teal,
                  child: RadioButtonGroup(
                    labelStyle: TextStyle(color: Colors.white),
                    activeColor: Colors.amberAccent,
                    labels: <String>[
                      "Gary has been sick for 5 years.",
                      "Gary is been sick for 5 years."
                    ],
                    onSelected: (String selected) =>
                    good7 = selected.toString().trim(),
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  enabled: false,
                  controller: tf7,
                ),
                Divider(),
                Card(
                  color: Colors.teal,
                  child: RadioButtonGroup(
                    labelStyle: TextStyle(color: Colors.white),
                    activeColor: Colors.amberAccent,
                    labels: <String>[
                      "I was awake when she called.",
                      "I am awake when she called.",
                    ],
                    onSelected: (String selected) =>
                    good8 = selected.toString().trim(),
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  enabled: false,
                  controller: tf8,
                ),
                Divider(),
                Card(
                  color: Colors.teal,
                  child: RadioButtonGroup(
                    labelStyle: TextStyle(color: Colors.white),
                    activeColor: Colors.amberAccent,
                    labels: <String>[
                      "She is talking to me last night.",
                      "She was talking to me last night."
                    ],
                    onSelected: (String selected) =>
                    good9 = selected.toString().trim(),
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  enabled: false,
                  controller: tf9,
                ),
                Divider(),
                Card(
                  color: Colors.teal,
                  child: RadioButtonGroup(
                    labelStyle: TextStyle(color: Colors.white),
                    activeColor: Colors.amberAccent,
                    labels: <String>[
                      "She is loved the food.",
                      "She loved the food."
                    ],
                    onSelected: (String selected) =>
                    good10 = selected.toString().trim(),
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  enabled: false,
                  controller: tf10,
                ),
                Divider(),
                Card(
                  color: Colors.teal,
                  child: RadioButtonGroup(
                    labelStyle: TextStyle(color: Colors.white),
                    activeColor: Colors.amberAccent,
                    labels: <String>[
                      "I always talk to Jeeyou.",
                      "I always taking to Jeeyou."
                    ],
                    onSelected: (String selected) =>
                    good11 = selected.toString().trim(),
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  enabled: false,
                  controller: tf11,
                ),
                Divider(),
                Card(
                  color: Colors.teal,
                  child: RadioButtonGroup(
                    labelStyle: TextStyle(color: Colors.white),
                    activeColor: Colors.amberAccent,
                    labels: <String>[
                      "Revens stopping to get food.",
                      "Revens stopped to get food."
                    ],
                    onSelected: (String selected) =>
                    good12 = selected.toString().trim(),
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  enabled: false,
                  controller: tf12,
                ),
                Divider(),
                Card(
                  color: Colors.teal,
                  child: RadioButtonGroup(
                    labelStyle: TextStyle(color: Colors.white),
                    activeColor: Colors.amberAccent,
                    labels: <String>[
                      "Kevin is eating pizza at the moment.",
                      "Kevin is eated pizza at the moment."
                    ],
                    onSelected: (String selected) =>
                    good13 = selected.toString().trim(),
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  enabled: false,
                  controller: tf13,
                ),
                Divider(),
                Card(
                  color: Colors.teal,
                  child: RadioButtonGroup(
                    labelStyle: TextStyle(color: Colors.white),
                    activeColor: Colors.amberAccent,
                    labels: <String>[
                      "It is going to rain tomorrow.",
                      "It will going to rain tomorrow."
                    ],
                    onSelected: (String selected) =>
                    good14 = selected.toString().trim(),
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  enabled: false,
                  controller: tf14,
                ),
                Divider(),
                Card(
                  color: Colors.teal,
                  child: RadioButtonGroup(
                    labelStyle: TextStyle(color: Colors.white),
                    activeColor: Colors.amberAccent,
                    labels: <String>[
                      "Alyssa went to the movies later.",
                      "Alyssa will go to the movies later."
                    ],
                    onSelected: (String selected) =>
                    good15 = selected.toString().trim(),
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  enabled: false,
                  controller: tf15,
                ),
                Divider(),
                Card(
                  color: Colors.teal,
                  child: RadioButtonGroup(
                    labelStyle: TextStyle(color: Colors.white),
                    activeColor: Colors.amberAccent,
                    labels: <String>[
                      "I watched a funny movie last night.",
                      "I watch a funy movie last night."
                    ],
                    onSelected: (String selected) =>
                    good16 = selected.toString().trim(),
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  enabled: false,
                  controller: tf16,
                ),
                Divider(),
                Card(
                  color: Colors.teal,
                  child: RadioButtonGroup(
                    labelStyle: TextStyle(color: Colors.white),
                    activeColor: Colors.amberAccent,
                    labels: <String>[
                      "She feels good every day.",
                      "She feeling good every day."
                    ],
                    onSelected: (String selected) =>
                    good17 = selected.toString().trim(),
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  enabled: false,
                  controller: tf17,
                ),
                Divider(),
                Card(
                  color: Colors.teal,
                  child: RadioButtonGroup(
                    labelStyle: TextStyle(color: Colors.white),
                    activeColor: Colors.amberAccent,
                    labels: <String>[
                      "I like going to church.",
                      "I am like going to church."
                    ],
                    onSelected: (String selected) =>
                    good18 = selected.toString().trim(),
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  enabled: false,
                  controller: tf18,
                ),
                Divider(),
                Card(
                  color: Colors.teal,
                  child: RadioButtonGroup(
                    labelStyle: TextStyle(color: Colors.white),
                    activeColor: Colors.amberAccent,
                    labels: <String>[
                      "I have been worked there for 3 years.",
                      "I have been working there for 3 years."
                    ],
                    onSelected: (String selected) =>
                    good19 = selected.toString().trim(),
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  enabled: false,
                  controller: tf19,
                ),
                Divider(),
                Card(
                  color: Colors.teal,
                  child: RadioButtonGroup(
                    labelStyle: TextStyle(color: Colors.white),
                    activeColor: Colors.amberAccent,
                    labels: <String>[
                      "I eated an apple Yesterday.",
                      "I ate an apple Yesterday."
                    ],
                    onSelected: (String selected) =>
                    good20 = selected.toString().trim(),
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  enabled: false,
                  controller: tf20,
                ),
                Divider(),
                Center(
                  child: SizedBox(
                    child: GestureDetector(
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
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }

  verifye() {
    RewardedVideoAd.instance.show();
    if (good1 == "I am eating right now.") {
      tf1.text = ("✅");
    } else
      tf1.text = ("❌");

    if (good2 == "I was talking to Jenny Yesterday.") {
      tf2.text = ("✅");
    } else
      tf2.text = ("❌");

    if (good3 == "Will has been living there for 4 years.") {
      tf3.text = ("✅");
    } else
      tf3.text = ("❌");

    if (good4 == "I go to church every Sunday.") {
      tf4.text = ("✅");
    } else
      tf4.text = ("❌");

    if (good5 == "I read and eat at the same time.") {
      tf5.text = ("✅");
    } else
      tf5.text = ("❌");

    if (good6 == "Winnie called me Yesterday.") {
      tf6.text = ("✅");
    } else
      tf6.text = ("❌");

    if (good7 == "Gary has been sick for 5 years.") {
      tf7.text = ("✅");
    } else
      tf7.text = ("❌");

    if (good8 == "I was awake when she called.") {
      tf8.text = ("✅");
    } else
      tf8.text = ("❌");

    if (good9 == "She was talking to me last night.") {
      tf9.text = ("✅");
    } else
      tf9.text = ("❌");

    if (good10 == "She loved the food.") {
      tf10.text = ("✅");
    } else
      tf10.text = ("❌");

    if (good11 == "I always talk to Jeeyou.") {
      tf11.text = ("✅");
    } else
      tf11.text = ("❌");

    if (good12 == "Revens stopped to get food.") {
      tf12.text = ("✅");
    } else
      tf12.text = ("❌");

    if (good13 == "Kevin is eating pizza at the moment.") {
      tf13.text = ("✅");
    } else
      tf13.text = ("❌");

    if (good14 == "It is going to rain tomorrow.") {
      tf14.text = ("✅");
    } else
      tf14.text = ("❌");

    if (good15 == "Alyssa will go to the movies later.") {
      tf15.text = ("✅");
    } else
      tf15.text = ("❌");

    if (good16 == "I watched a funny movie last night.") {
      tf16.text = ("✅");
    } else
      tf16.text = ("❌");

    if (good17 == "She feels good every day.") {
      tf17.text = ("✅");
    } else
      tf17.text = ("❌");

    if (good18 == "I like going to church.") {
      tf18.text = ("✅");
    } else
      tf18.text = ("❌");

    if (good19 == "I have been working there for 3 years.") {
      tf19.text = ("✅");
    } else
      tf19.text = ("❌");

    if (good20 == "I ate an apple Yesterday.") {
      tf20.text = ("✅");
    } else
      tf20.text = ("❌");
  }
}