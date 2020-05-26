import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';

void main() => runApp(tes_vokabile_body());

class tes_vokabile_body extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<tes_vokabile_body> {
  @override
  void initState() {
    super.initState();
    FirebaseAdMob.instance.initialize(appId: 'ca-app-pub-5567410113651073~4007866614');
    _bannerAd = createBannerAd()..load()..show();
    _interstitialAd =createInterstitialAd()..load();
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
    _interstitialAd.dispose();
    super.dispose();
  }

  int _total;

  int count = 0;
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

  final result = TextEditingController();

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
                      "TESTE KONESANS OU",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 30.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "JWENN MO ANGLÈ A",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Divider(),

                    VOCA("Tèt", tf1),
                    VOCA("Men", tf2),
                    VOCA("Kou", tf3),
                    VOCA("Nen", tf4),
                    VOCA("Fon", tf5),
                    VOCA("je (2)", tf6),
                    VOCA("Bouch", tf7),
                    VOCA("Vant", tf8),
                    VOCA("Cheve", tf9),
                    VOCA("Figi", tf10),
                    VOCA("Jenou", tf11),
                    VOCA("Lang", tf12),
                    VOCA("Epòl", tf13),
                    VOCA("Dan", tf14),
                    VOCA("Pwatrin", tf15),
                    VOCA("Dwèt", tf16),
                    VOCA("Kabann", tf17),
                    VOCA("Tab", tf18),
                    VOCA("Chèz", tf19),
                    VOCA("Òdinatè", tf20),
                    VOCA("Radyo", tf21),
                    VOCA("Chapo", tf22),
                    VOCA("Pnatalon", tf23),
                    VOCA("Sentiwon", tf24),
                    VOCA("Chemiz", tf25),
                    VOCA("Jip", tf26),
                    VOCA("Vyann", tf27),
                    VOCA("Pwason", tf28),
                    VOCA("Sik", tf29),
                    VOCA("Mayi", tf30),

                    Center(
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
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
          ],
        ));

  }
  void grade (String result, TextEditingController tf ){
    if(tf.text.toString().toLowerCase().trim()==result){
      tf.text = tf.text +" ✅";
    } else if (tf.text.toString()==""||tf.text.toString().toLowerCase().trim()==result+" ✅"|| tf.text.endsWith(" ❌")){}
    else tf.text = tf.text +" ❌";
  }

  verifye(){
    _interstitialAd.show();
    grade('head', tf1);
    grade('hand', tf2);
    grade('neck', tf3);
    grade('nose', tf4);
    grade('forehead', tf5);
    grade('eyes', tf6);
    grade('mouth', tf7);
    grade('stomach', tf8);
    grade('hair', tf9);
    grade('face', tf10);
    grade('knee', tf11);
    grade('tongue', tf12);
    grade('shoulder', tf13);
    grade('teeth', tf14);
    grade('chest', tf15);
    grade('finger', tf16);
    grade('bed', tf17);
    grade('table', tf18);
    grade('chair', tf19);
    grade('computer', tf20);
    grade('radio', tf21);
    grade('hat', tf22);
    grade('pants', tf23);
    grade('belt', tf24);
    grade('shirt', tf25);
    grade('skirt', tf26);
    grade('meat', tf27);
    grade('fish', tf28);
    grade('sugar', tf29);
    grade('corn', tf30);
  }
}

class VOCA extends StatelessWidget{
  final String text;
  final TextEditingController tf;
  VOCA(this.text, this.tf);
  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 100,
                  child: Text(text, style: TextStyle(fontSize: 20)),
                ),
                Container(
                  width: 20,
                  child: Text("=", style: TextStyle(fontSize: 20)),
                ),
                SizedBox(
                  width: 120,
                  child: TextField(
                      controller: tf,
                      decoration:
                      InputDecoration(hintText: "Repons")),
                )
              ],
            ),
          ),
          Divider(),
        ],
      );
  }
}