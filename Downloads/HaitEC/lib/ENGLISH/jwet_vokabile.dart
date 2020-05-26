import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:firebase_admob/firebase_admob.dart';
//import 'package:first_app/MAIN/english.dart';

void main() => runApp(jwet_vokabile());

class jwet_vokabile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<jwet_vokabile> {
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
    String S = "\t\t\t\t\t\t";

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
              padding: EdgeInsets.all(10),
              child: new Center(
                child: Column(
                  children: <Widget>[
                    new Container(
                      child: Text(
                        "JWÈT VOKABILÈ AK IMAJ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 20.0,
                          color: Colors.teal,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/bed.png',
                            height: 50,
                            width: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                  S + "Cake" + S,
                                  S + S + "Bed" + S + S,
                                  S + "Bread" + S,
                                ],
                                orientation:
                                GroupedButtonsOrientation.HORIZONTAL,
                                onSelected: (String selected) =>
                                good1 = selected.toString().trim(),
                              ),
                            ],
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf1,
                          ),
                        ],
                      ),
//                      elevation: 200,
                    ),
                    Divider(),
                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/sofa.png',
                            height: 50,
                            width: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                  S + "Apple" + S,
                                  S + S + "Pillow" + S + S,
                                  S + "Sofa" + S,
                                ],
                                orientation:
                                GroupedButtonsOrientation.HORIZONTAL,
                                onSelected: (String selected) =>
                                good2 = selected.toString().trim(),
                              ),
                            ],
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf2,
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/fan.png',
                            height: 50,
                            width: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                  S + "\t\tVent\t" + S,
                                  S + S + "\tAir\t" + S + S,
                                  S + "\t\tFan\t\t" + S,
                                ],
                                orientation:
                                GroupedButtonsOrientation.HORIZONTAL,
                                onSelected: (String selected) =>
                                good3 = selected.toString().trim(),
                              ),
                            ],
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf3,
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/oven.png',
                            height: 50,
                            width: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                  S + "Radio" + S,
                                  S + S + "Oven" + S + S,
                                  S + "Cook" + S,
                                ],
                                orientation:
                                GroupedButtonsOrientation.HORIZONTAL,
                                onSelected: (String selected) =>
                                good4 = selected.toString().trim(),
                              ),
                            ],
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf4,
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/table.jpg',
                            height: 50,
                            width: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                  S + "Table" + S,
                                  S + S + "\tFood\t" + S + S,
                                  S + "Lidie" + S,
                                ],
                                orientation:
                                GroupedButtonsOrientation.HORIZONTAL,
                                onSelected: (String selected) =>
                                good5 = selected.toString().trim(),
                              ),
                            ],
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf5,
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/chair.jpg',
                            height: 50,
                            width: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                  S + "Case" + S,
                                  S + S + "Chair" + S + S,
                                  S + "Chalk" + S,
                                ],
                                orientation:
                                GroupedButtonsOrientation.HORIZONTAL,
                                onSelected: (String selected) =>
                                good6 = selected.toString().trim(),
                              ),
                            ],
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf6,
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/closet.png',
                            height: 50,
                            width: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                  S + "Closet" + S,
                                  S + S + "Clos" + S + S,
                                  S + "Office" + S,
                                ],
                                orientation:
                                GroupedButtonsOrientation.HORIZONTAL,
                                onSelected: (String selected) =>
                                good7 = selected.toString().trim(),
                              ),
                            ],
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf7,
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/computer.png',
                            height: 50,
                            width: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                  S + "Closet" + S,
                                  S + "\t\tComputer\t\t" + S,
                                  S + "Phone" + S,
                                ],
                                orientation:
                                GroupedButtonsOrientation.HORIZONTAL,
                                onSelected: (String selected) =>
                                good8 = selected.toString().trim(),
                              ),
                            ],
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf8,
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/tv.png',
                            height: 50,
                            width: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                  S + "Tel" + S,
                                  S + S + "Sneakers" + S + S,
                                  S + "TV" + S,
                                ],
                                orientation:
                                GroupedButtonsOrientation.HORIZONTAL,
                                onSelected: (String selected) =>
                                good9 = selected.toString().trim(),
                              ),
                            ],
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf9,
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/hand.png',
                            height: 50,
                            width: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                  S + "\t\tLegs\t" + S,
                                  S + S + "Food" + S + S,
                                  S + "\tHand\t\t" + S,
                                ],
                                orientation:
                                GroupedButtonsOrientation.HORIZONTAL,
                                onSelected: (String selected) =>
                                good10 = selected.toString().trim(),
                              ),
                            ],
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf10,
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/neck.png',
                            height: 50,
                            width: 50,
                            color: Colors.black,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                  S + "\t\tNeck\t\t" + S,
                                  S + S + "Hug" + S + S,
                                  S + "\t\tLace\t\t" + S,
                                ],
                                orientation:
                                GroupedButtonsOrientation.HORIZONTAL,
                                onSelected: (String selected) =>
                                good11 = selected.toString().trim(),
                              ),
                            ],
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf11,
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/head.png',
                            height: 50,
                            width: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                  S + "Sick" + S,
                                  S + S + "\t\tHead\t\t" + S + S,
                                  S + "Feet" + S,
                                ],
                                orientation:
                                GroupedButtonsOrientation.HORIZONTAL,
                                onSelected: (String selected) =>
                                good12 = selected.toString().trim(),
                              ),
                            ],
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf12,
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/finger.png',
                            height: 50,
                            width: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                  S + "Finger" + S,
                                  S + S + "\tToes\t\t" + S + S,
                                  S + "Storm" + S,
                                ],
                                orientation:
                                GroupedButtonsOrientation.HORIZONTAL,
                                onSelected: (String selected) =>
                                good13 = selected.toString().trim(),
                              ),
                            ],
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf13,
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/eyes.png',
                            height: 50,
                            width: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                  S + "Seeing" + S,
                                  S + S + "\t\tEagle\t\t" + S + S,
                                  S + "Eye" + S,
                                ],
                                orientation:
                                GroupedButtonsOrientation.HORIZONTAL,
                                onSelected: (String selected) =>
                                good14 = selected.toString().trim(),
                              ),
                            ],
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf14,
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/penis.png',
                            height: 50,
                            width: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                  S + "Penis\t\t" + S,
                                  S + S + "\tPen\t\t" + S + S,
                                  S + "\t\tFinger" + S,
                                ],
                                orientation:
                                GroupedButtonsOrientation.HORIZONTAL,
                                onSelected: (String selected) =>
                                good15 = selected.toString().trim(),
                              ),
                            ],
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf15,
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/hair.png',
                            height: 50,
                            width: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                  S + "Grass\t\t" + S,
                                  S + S + "\tHair\t" + S + S,
                                  S + "\t\tBeard" + S,
                                ],
                                orientation:
                                GroupedButtonsOrientation.HORIZONTAL,
                                onSelected: (String selected) =>
                                good16 = selected.toString().trim(),
                              ),
                            ],
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf16,
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/teeth.png',
                            height: 50,
                            width: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                  S + "Bottle\t\t" + S,
                                  S + S + "Teeth" + S + S,
                                  S + "\t\tDead" + S,
                                ],
                                orientation:
                                GroupedButtonsOrientation.HORIZONTAL,
                                onSelected: (String selected) =>
                                good17 = selected.toString().trim(),
                              ),
                            ],
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf17,
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/nose.png',
                            height: 50,
                            width: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                  S + "Neck\t\t" + S,
                                  S + S + "\t\tBox\t\t" + S + S,
                                  S + "\t\tNose" + S,
                                ],
                                orientation:
                                GroupedButtonsOrientation.HORIZONTAL,
                                onSelected: (String selected) =>
                                good18 = selected.toString().trim(),
                              ),
                            ],
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf18,
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/mouth.png',
                            height: 50,
                            width: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                  S + "Paper" + S,
                                  S + S + "Mouth" + S + S,
                                  S + "Month" + S,
                                ],
                                orientation:
                                GroupedButtonsOrientation.HORIZONTAL,
                                onSelected: (String selected) =>
                                good19 = selected.toString().trim(),
                              ),
                            ],
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf19,
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    new Card(
                      color: Colors.teal,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/lips.png',
                            height: 50,
                            width: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Color(0xFFFFC107),
                                labels: <String>[
                                  S + "Lips\t\t" + S,
                                  S + S + "\t\tLabio\t\t" + S + S,
                                  S + "\t\tLoop" + S,
                                ],
                                orientation:
                                GroupedButtonsOrientation.HORIZONTAL,
                                onSelected: (String selected) =>
                                good20 = selected.toString().trim(),
                              ),
                            ],
                          ),
                          TextField(
                            textAlign: TextAlign.center,
                            enabled: false,
                            controller: tf20,
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Center(
                      child: SizedBox(
                        width: 200,
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
              )),
          SizedBox(height: 40),
        ],
      ),
    );
  }

  verifye() {

    if (good1 == "Bed") {
      tf1.text = "✅";
    } else
      tf1.text = "❌";

    if (good2 == "Sofa") {
      tf2.text = "✅";
    } else
      tf2.text = "❌";

    if (good3 == "Fan") {
      tf3.text = ("✅");
    } else
      tf3.text = ("❌");

    if (good4 == "Oven") {
      tf4.text = ("✅");
    } else
      tf4.text = ("❌");

    if (good5 == "Table") {
      tf5.text = ("✅");
    } else
      tf5.text = ("❌");

    if (good6 == "Chair") {
      tf6.text = ("✅");
    } else
      tf6.text = ("❌");

    if (good7 == "Closet") {
      tf7.text = ("✅");
    } else
      tf7.text = ("❌");

    if (good8 == "Computer") {
      tf8.text = ("✅");
    } else
      tf8.text = ("❌");

    if (good9 == "TV") {
      tf9.text = ("✅");
    } else
      tf9.text = ("❌");

    if (good10 == "Hand") {
      tf10.text = ("✅");
    } else
      tf10.text = ("❌");

    if (good11 == "Neck") {
      tf11.text = ("✅");
    } else
      tf11.text = ("❌");

    if (good12 == "Head") {
      tf12.text = ("✅");
    } else
      tf12.text = ("❌");

    if (good13 == "Finger") {
      tf13.text = ("✅");
    } else
      tf13.text = ("❌");

    if (good14 == "Eye") {
      tf14.text = ("✅");
    } else
      tf14.text = ("❌");

    if (good15 == "Penis") {
      tf15.text = ("✅");
    } else
      tf15.text = ("❌");

    if (good16 == "Hair") {
      tf16.text = ("✅");
    } else
      tf16.text = ("❌");

    if (good17 == "Teeth") {
      tf17.text = ("✅");
    } else
      tf17.text = ("❌");

    if (good18 == "Nose") {
      tf18.text = ("✅");
    } else
      tf18.text = ("❌");

    if (good19 == "Mouth") {
      tf19.text = ("✅");
    } else
      tf19.text = ("❌");

    if (good20 == "Lips") {
      tf20.text = ("✅");
    } else
      tf20.text = ("❌");
  }
}
