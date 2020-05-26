import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';

void main() => runApp(adjektif_prefiks_pratik());

class adjektif_prefiks_pratik extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<adjektif_prefiks_pratik> {
  @override
  void initState() {
    super.initState();
    FirebaseAdMob.instance
        .initialize(appId: 'ca-app-pub-5567410113651073~4007866614');
    _bannerAd = createBannerAd()
      ..load()
      ..show();
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
  final tf28 = TextEditingController();
  final tf29 = TextEditingController();
  final tf30 = TextEditingController();

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
        children: <Widget>[
          Container(
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "METE YON PREFIKS DEVAN ADJEKTIF YO POU JWEMM MO NEGATIF LA",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 20.0,
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Acceptable", style: TextStyle(fontSize: 20)),
                        Text("=", style: TextStyle(fontSize: 20)),
                        SizedBox(
                          width: 120,
                          child: TextField(
                              controller: tf1,
                              decoration: InputDecoration(hintText: "Repons")),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Proper", style: TextStyle(fontSize: 20)),
                        Text("=", style: TextStyle(fontSize: 20)),
                        SizedBox(
                          width: 120,
                          child: TextField(
                              controller: tf2,
                              decoration: InputDecoration(hintText: "Repons")),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Polite", style: TextStyle(fontSize: 20)),
                        Text("=", style: TextStyle(fontSize: 20)),
                        SizedBox(
                          width: 120,
                          child: TextField(
                              controller: tf3,
                              decoration: InputDecoration(hintText: "Repons")),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Mature", style: TextStyle(fontSize: 20)),
                        Text("=", style: TextStyle(fontSize: 20)),
                        SizedBox(
                          width: 120,
                          child: TextField(
                              controller: tf4,
                              decoration: InputDecoration(hintText: "Repons")),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Responsible", style: TextStyle(fontSize: 20)),
                        Text("=", style: TextStyle(fontSize: 20)),
                        SizedBox(
                          width: 120,
                          child: TextField(
                              controller: tf5,
                              decoration: InputDecoration(hintText: "Repons")),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Respectful", style: TextStyle(fontSize: 20)),
                        Text("=", style: TextStyle(fontSize: 20)),
                        SizedBox(
                          width: 120,
                          child: TextField(
                              controller: tf6,
                              decoration: InputDecoration(hintText: "Repons")),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Considerable", style: TextStyle(fontSize: 20)),
                        Text("=", style: TextStyle(fontSize: 20)),
                        SizedBox(
                          width: 120,
                          child: TextField(
                              controller: tf7,
                              decoration: InputDecoration(hintText: "Repons")),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Rational", style: TextStyle(fontSize: 20)),
                        Text("=", style: TextStyle(fontSize: 20)),
                        SizedBox(
                          width: 120,
                          child: TextField(
                              controller: tf8,
                              decoration: InputDecoration(hintText: "Repons")),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Appropriate", style: TextStyle(fontSize: 20)),
                        Text("=", style: TextStyle(fontSize: 20)),
                        SizedBox(
                          width: 120,
                          child: TextField(
                              controller: tf9,
                              decoration: InputDecoration(hintText: "Repons")),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Pure", style: TextStyle(fontSize: 20)),
                        Text("=", style: TextStyle(fontSize: 20)),
                        SizedBox(
                          width: 120,
                          child: TextField(
                              controller: tf10,
                              decoration: InputDecoration(hintText: "Repons")),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Immaginable", style: TextStyle(fontSize: 20)),
                        Text("=", style: TextStyle(fontSize: 20)),
                        SizedBox(
                          width: 120,
                          child: TextField(
                              controller: tf11,
                              decoration: InputDecoration(hintText: "Repons")),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Excusable", style: TextStyle(fontSize: 20)),
                        Text("=", style: TextStyle(fontSize: 20)),
                        SizedBox(
                          width: 120,
                          child: TextField(
                              controller: tf12,
                              decoration: InputDecoration(hintText: "Repons")),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Honest", style: TextStyle(fontSize: 20)),
                        Text("=", style: TextStyle(fontSize: 20)),
                        SizedBox(
                          width: 120,
                          child: TextField(
                              controller: tf13,
                              decoration: InputDecoration(hintText: "Repons")),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Pleasant", style: TextStyle(fontSize: 20)),
                        Text("=", style: TextStyle(fontSize: 20)),
                        SizedBox(
                          width: 120,
                          child: TextField(
                              controller: tf14,
                              decoration: InputDecoration(hintText: "Repons")),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Able", style: TextStyle(fontSize: 20)),
                        Text("=", style: TextStyle(fontSize: 20)),
                        SizedBox(
                          width: 120,
                          child: TextField(
                              controller: tf15,
                              decoration: InputDecoration(hintText: "Repons")),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Moral", style: TextStyle(fontSize: 20)),
                        Text("=", style: TextStyle(fontSize: 20)),
                        SizedBox(
                          width: 120,
                          child: TextField(
                              controller: tf16,
                              decoration: InputDecoration(hintText: "Repons")),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Happy", style: TextStyle(fontSize: 20)),
                        Text("=", style: TextStyle(fontSize: 20)),
                        SizedBox(
                          width: 120,
                          child: TextField(
                              controller: tf17,
                              decoration: InputDecoration(hintText: "Repons")),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Possible", style: TextStyle(fontSize: 20)),
                        Text("=", style: TextStyle(fontSize: 20)),
                        SizedBox(
                          width: 120,
                          child: TextField(
                              controller: tf18,
                              decoration: InputDecoration(hintText: "Repons")),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Legal", style: TextStyle(fontSize: 20)),
                        Text("=", style: TextStyle(fontSize: 20)),
                        SizedBox(
                          width: 120,
                          child: TextField(
                              controller: tf19,
                              decoration: InputDecoration(hintText: "Repons")),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Correct", style: TextStyle(fontSize: 20)),
                        Text("=", style: TextStyle(fontSize: 20)),
                        SizedBox(
                          width: 120,
                          child: TextField(
                              controller: tf20,
                              decoration: InputDecoration(hintText: "Repons")),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Formal", style: TextStyle(fontSize: 20)),
                        Text("=", style: TextStyle(fontSize: 20)),
                        SizedBox(
                          width: 120,
                          child: TextField(
                              controller: tf21,
                              decoration: InputDecoration(hintText: "Repons")),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Connected", style: TextStyle(fontSize: 20)),
                        Text("=", style: TextStyle(fontSize: 20)),
                        SizedBox(
                          width: 120,
                          child: TextField(
                              controller: tf22,
                              decoration: InputDecoration(hintText: "Repons")),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Satisfy", style: TextStyle(fontSize: 20)),
                        Text("=", style: TextStyle(fontSize: 20)),
                        SizedBox(
                          width: 120,
                          child: TextField(
                              controller: tf23,
                              decoration: InputDecoration(hintText: "Repons")),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Known", style: TextStyle(fontSize: 20)),
                        Text("=", style: TextStyle(fontSize: 20)),
                        SizedBox(
                          width: 120,
                          child: TextField(
                              controller: tf24,
                              decoration: InputDecoration(hintText: "Repons")),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Visible", style: TextStyle(fontSize: 20)),
                        Text("=", style: TextStyle(fontSize: 20)),
                        SizedBox(
                          width: 120,
                          child: TextField(
                              controller: tf25,
                              decoration: InputDecoration(hintText: "Repons")),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Read", style: TextStyle(fontSize: 20)),
                        Text("=", style: TextStyle(fontSize: 20)),
                        SizedBox(
                          width: 120,
                          child: TextField(
                              controller: tf26,
                              decoration: InputDecoration(hintText: "Repons")),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Regular", style: TextStyle(fontSize: 20)),
                        Text("=", style: TextStyle(fontSize: 20)),
                        SizedBox(
                          width: 120,
                          child: TextField(
                              controller: tf27,
                              decoration: InputDecoration(hintText: "Repons")),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Spell", style: TextStyle(fontSize: 20)),
                        Text("=", style: TextStyle(fontSize: 20)),
                        SizedBox(
                          width: 120,
                          child: TextField(
                              controller: tf28,
                              decoration: InputDecoration(hintText: "Repons")),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Loyal", style: TextStyle(fontSize: 20)),
                        Text("=", style: TextStyle(fontSize: 20)),
                        SizedBox(
                          width: 120,
                          child: TextField(
                              controller: tf29,
                              decoration: InputDecoration(hintText: "Repons")),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Agree", style: TextStyle(fontSize: 20)),
                        Text("=", style: TextStyle(fontSize: 20)),
                        SizedBox(
                          width: 120,
                          child: TextField(
                              controller: tf30,
                              decoration: InputDecoration(hintText: "Repons")),
                        )
                      ],
                    ),
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
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  grade(String result, TextEditingController tf) {
    if (tf.text.toString().toLowerCase().trim() == result) {
      tf.text = tf.text + " ✅";
    } else if (tf.text.toString() == "" ||
        tf.text.toString().toLowerCase().trim() == "$result ✅" ||
        tf.text.endsWith(" ❌")) {
    } else
      tf.text = tf.text + " ❌";
  }

  verifye() {
    RewardedVideoAd.instance.show();
    grade("unacceptable", tf1);
    grade("improper", tf12);
    grade("impolite", tf3);
    grade("immature", tf4);
    grade("irresponsible", tf5);
    grade("disrespectful", tf6);
    grade("unconsiderable", tf7);
    grade("irrational", tf8);
    grade("inappropriate", tf9);
    grade("inappropriate", tf10);
    grade("unimmaginable", tf11);
    grade("unexcusable", tf12);
    grade("dishonest", tf13);
    grade("unpleasant", tf14);
    grade("unable", tf15);
    grade("immoral", tf16);
    grade("unhappy", tf17);
    grade("impossible", tf18);
    grade("illegal", tf19);
    grade("incorrect", tf20);
    grade("informal", tf21);
    grade("disconnect", tf22);
    grade("dissatisfy", tf23);
    grade("unknown", tf24);
    grade("invisible", tf25);
    grade("missread", tf26);
    grade("irregular", tf27);
    grade("missspell", tf28);
    grade("unloyal", tf29);
    grade("disloyal", tf29);
    grade("disagree", tf30);
  }
}
