import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:firebase_admob/firebase_admob.dart';

void main() => runApp(jwet_manje());

class jwet_manje extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<jwet_manje> {
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
          Container(
              padding: EdgeInsets.all(3.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(7),
                      child: Text(
                        "KONNEN MANJE YO",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 30.0,
                          color: Colors.teal,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/tomatoes.png',
                            height: 50,
                            width: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Colors.amberAccent,
                                labels: <String>[
                                  S + "Tomato" + S,
                                  S + S + "Lettuce" + S + S,
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
                      elevation: 200,
                      color: Colors.teal,
                    ),
                    Divider(),
                    Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/apple.png',
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
                                activeColor: Colors.amberAccent,
                                labels: <String>[
                                  S + "Apple" + S,
                                  S + S + "Orange" + S + S,
                                  S + "iphone" + S,
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
                      elevation: 200,
                      color: Colors.teal,
                    ),
                    Divider(),
                    Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/grape.png',
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
                                activeColor: Colors.amberAccent,
                                labels: <String>[
                                  S + "\t\Grey\t" + S,
                                  S + S + "\tGray\t" + S + S,
                                  S + "\t\tGrape\t\t" + S,
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
                      elevation: 200,
                      color: Colors.teal,
                    ),
                    Divider(),
                    Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/mango.png',
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
                                activeColor: Colors.amberAccent,
                                labels: <String>[
                                  S + "Pera" + S,
                                  S + S + "Mango" + S + S,
                                  S + "Peach" + S,
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
                      elevation: 200,
                      color: Colors.teal,
                    ),
                    Divider(),
                    Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/fish.png',
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
                                activeColor: Colors.amberAccent,
                                labels: <String>[
                                  S + "Sea" + S,
                                  S + S + "\tFood\t" + S + S,
                                  S + "Fish" + S,
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
                      elevation: 200,
                      color: Colors.teal,
                    ),
                    Divider(),
                    Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/corn.png',
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
                                activeColor: Colors.amberAccent,
                                labels: <String>[
                                  S + "Corn" + S,
                                  S + S + "Cola" + S + S,
                                  S + "Meis" + S,
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
                      elevation: 200,
                      color: Colors.teal,
                    ),
                    Divider(),
                    Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/orange.png',
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
                                activeColor: Colors.amberAccent,
                                labels: <String>[
                                  S + "Orange" + S,
                                  S + S + "Omega" + S + S,
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
                      elevation: 200,
                      color: Colors.teal,
                    ),
                    Divider(),
                    Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/pineapple.png',
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
                                activeColor: Colors.amberAccent,
                                labels: <String>[
                                  S + "Pine" + S,
                                  S + "\t\tPineapple\t\t" + S,
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
                      elevation: 200,
                      color: Colors.teal,
                    ),
                    Divider(),
                    Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/banana.png',
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
                                activeColor: Colors.amberAccent,
                                labels: <String>[
                                  S + "Beans" + S,
                                  S + S + "Banana" + S + S,
                                  S + "Banan" + S,
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
                      elevation: 200,
                      color: Colors.teal,
                    ),
                    Divider(),
                    Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/cake.png',
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
                                activeColor: Colors.amberAccent,
                                labels: <String>[
                                  S + "Piment" + S,
                                  S + S + "Gachiach" + S + S,
                                  S + "Cake" + S,
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
                      elevation: 200,
                      color: Colors.teal,
                    ),
                    Divider(),
                    Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/pepper.png',
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
                                activeColor: Colors.amberAccent,
                                labels: <String>[
                                  S + "\t\Pepper\t\t" + S,
                                  S + S + "Banana" + S + S,
                                  S + "\t\tIce\t\t" + S,
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
                      elevation: 200,
                      color: Colors.teal,
                    ),
                    Divider(),
                    Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/egg.png',
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
                                activeColor: Colors.amberAccent,
                                labels: <String>[
                                  S + "Juice" + S,
                                  S + S + "\t\tEgg\t\t" + S + S,
                                  S + "Drink" + S,
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
                      elevation: 200,
                      color: Colors.teal,
                    ),
                    Divider(),
                    Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/rice.png',
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
                                activeColor: Colors.amberAccent,
                                labels: <String>[
                                  S + "Oil" + S,
                                  S + S + "\tWater\t\t" + S + S,
                                  S + "Rice" + S,
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
                      elevation: 200,
                      color: Colors.teal,
                    ),
                    Divider(),
                    Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/onion.png',
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
                                activeColor: Colors.amberAccent,
                                labels: <String>[
                                  S + "Wine" + S,
                                  S + S + "\t\tOnion\t\t" + S + S,
                                  S + "Milk" + S,
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
                      elevation: 200,
                      color: Colors.teal,
                    ),
                    Divider(),
                    Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/cake.png',
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
                                activeColor: Colors.amberAccent,
                                labels: <String>[
                                  S + "Cake\t\t" + S,
                                  S + S + "\tPotato\t\t" + S + S,
                                  S + "\t\tRice" + S,
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
                      elevation: 200,
                      color: Colors.teal,
                    ),
                    Divider(),
                    Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/cheese.png',
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
                                activeColor: Colors.amberAccent,
                                labels: <String>[
                                  S + "Cheese" + S,
                                  S + S + "Haro" + S + S,
                                  S + "Beard" + S,
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
                      elevation: 200,
                      color: Colors.teal,
                    ),
                    Divider(),
                    Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/tea.png',
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
                                activeColor: Colors.amberAccent,
                                labels: <String>[
                                  S + "Tea\t\t" + S,
                                  S + S + "\t\tTeeth\t\t" + S + S,
                                  S + "\t\tTee" + S,
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
                      elevation: 200,
                      color: Colors.teal,
                    ),
                    Divider(),
                    Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/beans.png',
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
                                activeColor: Colors.amberAccent,
                                labels: <String>[
                                  S + "Honey" + S,
                                  S + S + "HaitEC" + S + S,
                                  S + "Beans" + S,
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
                      elevation: 200,
                      color: Colors.teal,
                    ),
                    Divider(),
                    Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/bread.png',
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
                                activeColor: Colors.amberAccent,
                                labels: <String>[
                                  S + "Pepper" + S,
                                  S + S + "Bread" + S + S,
                                  S + "Soup" + S,
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
                      elevation: 200,
                      color: Colors.teal,
                    ),
                    Divider(),
                    Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/salad.png',
                            height: 50,
                            width: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              RadioButtonGroup(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                activeColor: Colors.amberAccent,
                                labels: <String>[
                                  S + "Sugar\t\t" + S,
                                  S + S + "\t\tSalad\t\t" + S + S,
                                  S + "\t\tLove" + S,
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
                      elevation: 200,
                      color: Colors.teal,
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
              )),
          SizedBox(height: 40),
        ],
      ),
    );
  }

  verifye() {
    RewardedVideoAd.instance.show();
    if (good1 == "Tomato") {
      tf1.text = ("✅");
    } else
      tf1.text = ("❌");

    if (good2 == "Apple") {
      tf2.text = ("✅");
    } else
      tf2.text = ("❌");

    if (good3 == "Grape") {
      tf3.text = ("✅");
    } else
      tf3.text = ("❌");

    if (good4 == "Mango") {
      tf4.text = ("✅");
    } else
      tf4.text = ("❌");

    if (good5 == "Fish") {
      tf5.text = ("✅");
    } else
      tf5.text = ("❌");

    if (good6 == "Corn") {
      tf6.text = ("✅");
    } else
      tf6.text = ("❌");

    if (good7 == "Orange") {
      tf7.text = ("✅");
    } else
      tf7.text = ("❌");

    if (good8 == "Pineapple") {
      tf8.text = ("✅");
    } else
      tf8.text = ("❌");

    if (good9 == "Banana") {
      tf9.text = ("✅");
    } else
      tf9.text = ("❌");

    if (good10 == "Cake") {
      tf10.text = ("✅");
    } else
      tf10.text = ("❌");

    if (good11 == "Pepper") {
      tf11.text = ("✅");
    } else
      tf11.text = ("❌");

    if (good12 == "Egg") {
      tf12.text = ("✅");
    } else
      tf12.text = ("❌");

    if (good13 == "Rice") {
      tf13.text = ("✅");
    } else
      tf13.text = ("❌");

    if (good14 == "Onion") {
      tf14.text = ("✅");
    } else
      tf14.text = ("❌");

    if (good15 == "Cake") {
      tf15.text = ("✅");
    } else
      tf15.text = ("❌");

    if (good16 == "Cheese") {
      tf16.text = ("✅");
    } else
      tf16.text = ("❌");

    if (good17 == "Tea") {
      tf17.text = ("✅");
    } else
      tf17.text = ("❌");

    if (good18 == "Beans") {
      tf18.text = ("✅");
    } else
      tf18.text = ("❌");

    if (good19 == "Bread") {
      tf19.text = ("✅");
    } else
      tf19.text = ("❌");

    if (good20 == "Salad") {
      tf20.text = ("✅");
    } else
      tf20.text = ("❌");
  }
}
