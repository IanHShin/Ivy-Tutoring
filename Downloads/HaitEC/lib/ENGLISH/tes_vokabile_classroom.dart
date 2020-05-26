import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';

void main() => runApp(tes_vokabile_classroom());

class tes_vokabile_classroom extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<tes_vokabile_classroom> {
  @override
  void initState() {
    super.initState();
    FirebaseAdMob.instance
        .initialize(appId: 'ca-app-pub-5567410113651073~4007866614');
    _bannerAd = createBannerAd()..load();
    _interstitialAd = createInterstitialAd()..load();
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
                      "FIND THE ENGLISH WORDS",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 25.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    VOCA("Biro", tf1),
                    VOCA("Plafon", tf2),
                    VOCA("Elèv", tf3),
                    VOCA("Mi", tf4),
                    VOCA("Radyo", tf5),
                    VOCA("Limyè", tf6),
                    VOCA("Poubèl", tf7),
                    VOCA("Liv", tf8),
                    VOCA("Kaye", tf9),
                    VOCA("Figi", tf10),
                    VOCA("kreyon", tf11),
                    VOCA("Fenèt", tf12),
                    VOCA("Tab", tf13),
                    VOCA("Chèz", tf14),
                    VOCA("Plim", tf15),
                    VOCA("lakrè", tf16),
                    VOCA("Règ", tf17),
                    VOCA("Tab", tf18),
                    VOCA("Chèz", tf19),
                    VOCA("Òdinatè", tf20),
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

  void grade(String result, TextEditingController tf) {
    if (tf.text.toString().toLowerCase().trim() == result) {
      tf.text = tf.text + " ✅";
    } else if (tf.text.toString() == "" ||
        tf.text.toString().toLowerCase().trim() == result + " ✅" ||
        tf.text.endsWith(" ❌")) {
    } else
      tf.text = tf.text + " ❌";
  }

  verifye() {
    _interstitialAd.show();
    grade('desk', tf1);
    grade('ceiling', tf2);
    grade('student', tf3);
    grade('wall', tf4);
    grade('radio', tf5);
    grade('light', tf6);
    grade('wastebasket', tf7);
    grade('book', tf8);
    grade('notebook', tf9);
    grade('face', tf10);
    grade('pencil', tf11);
    grade('window', tf12);
    grade('table', tf13);
    grade('chair', tf14);
    grade('pen', tf15);
    grade('chalk', tf16);
    grade('ruler', tf17);
    grade('table', tf18);
    grade('chair', tf19);
    grade('computer', tf20);
  }
}

class VOCA extends StatelessWidget {
  final String text;
  final TextEditingController tf;
  VOCA(this.text, this.tf);
  @override
  Widget build(BuildContext context) {
    return Column(
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
                    decoration: InputDecoration(hintText: "Repons")),
              )
            ],
          ),
        ),
        Divider(),
      ],
    );
  }
}
