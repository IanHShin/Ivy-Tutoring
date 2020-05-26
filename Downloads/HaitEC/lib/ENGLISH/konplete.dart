import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';

void main() => runApp(konplete());

class konplete extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<konplete> {

  @override
  void initState() {
    super.initState();
    FirebaseAdMob.instance.initialize(appId: 'ca-app-pub-5567410113651073~4007866614');
    _bannerAd = createBannerAd()..load();
    _interstitialAd = createInterstitialAd()..load();
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

  final tf1 = TextEditingController();
  final tf11 = TextEditingController();
  final tf2 = TextEditingController();
  final tf12 = TextEditingController();
  final tf3 = TextEditingController();
  final tf13 = TextEditingController();
  final tf4 = TextEditingController();
  final tf14 = TextEditingController();
  final tf5 = TextEditingController();
  final tf15 = TextEditingController();
  final tf6 = TextEditingController();
  final tf16 = TextEditingController();
  final tf7 = TextEditingController();
  final tf17 = TextEditingController();
  final tf8 = TextEditingController();
  final tf18 = TextEditingController();
  final tf9 = TextEditingController();
  final tf19 = TextEditingController();
  final tf10 = TextEditingController();
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
            Text(
              "\nFIND THE ANSWER\n",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 25.0,
                color: Colors.teal,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
                padding: EdgeInsets.all(5.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TEXT("1. The brother of my mom is my: ", tf1),
                      TEXT("2. The sister of my mom is my: ", tf2),
                      TEXT("3. The son of my uncle is my: ", tf3),
                      TEXT("4. Someone who can not see is: ", tf4),
                      TEXT("5. Someone who can not talk is: ", tf5),
                      TEXT("6. Someone who can not hear is: ", tf6),
                      TEXT("7. The daughter of my uncle is my: ", tf7),
                      TEXT("8. The father of my father is my: ", tf8),
                      TEXT("9. The father of my mother is my: ", tf9),
                      TEXT("10. The mother of my father is my: ", tf10),
                      TEXT("11. The son of my son is my: ", tf11),
                      TEXT("12. The daughter of my brother is my: ", tf12),
                      TEXT("13. The son of my brother is my: ", tf13),
                      TEXT("14. The daughter of my mother is my: ", tf14),
                      TEXT("15. The son of my father is my: ", tf15),
                      TEXT("16. The daughter of my father is my: ", tf16),
                      TEXT("17. The daughter of my sister is my: ", tf17),
                      TEXT("18. My mom and my dad are married, my mom is the: ", tf18),
                      TEXT("19. My mom and my dad are married, my dad is the: ", tf19),
                      TEXT("20. They become husband and wife when they are: ", tf20),

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
        ));
  }

  String Trim(String a) {
    return a.toString().toLowerCase().trim().split(" ").join("");
  }
  void grade (String result, TextEditingController tf ){
    if (Trim(tf.text) == result) {
      tf.text = tf.text + " ✅";
    } else if (tf.text.toString() == "" ||
        tf.text.toString().toLowerCase().trim() == result + " ✅" ||
        tf.text.endsWith(" ❌")) {
    } else
      tf.text = tf.text + " ❌";
  }

  verifye() {
    _interstitialAd.show();
    grade('uncle', tf1);
    grade('aunt', tf2);
    grade('cousin', tf3);
    grade('blind', tf4);
    grade('mute', tf5);
    grade('deaf', tf6);
    grade('cousin', tf7);
    grade('grandfather', tf8);
    grade('grandfather', tf9);
    grade('grandmother', tf10);
    grade('grandson', tf11);
    grade('niece', tf12);
    grade('nephew', tf13);
    grade('sister', tf14);
    grade('brother', tf15);
    grade('sister', tf16);
    grade('niece', tf17);
    grade('wife', tf18);
    grade('husband', tf19);
    grade('married', tf20);

  }
}
class TEXT extends StatelessWidget{
  final String text;
  final TextEditingController tf;
  TEXT(this.text, this.tf);
  @override
  Widget build(BuildContext context) {
    return
      Container(
        padding:
        EdgeInsets.only(bottom: 20.0, right: 5.0, left: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              padding: EdgeInsets.only(bottom: 3.0),
              child: Text(text,
                style:
                TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            new Container(
              width: 150,
              child: TextField(
                controller: tf,
                decoration: InputDecoration(hintText: "Repons"),
              ),
            ),
          ],
        ),
      );
  }
}