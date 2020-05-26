import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';

void main() => runApp(jwet_mo());

class jwet_mo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<jwet_mo> {
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
            "JWE AK MO YO",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 30.0,
              color: Colors.teal,
              fontWeight: FontWeight.bold,
            ),
          ),
          new Container(
              padding: EdgeInsets.all(5.0),
              child: new Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TEXT("1. If today is Monday, after tomorrow will be: ", tf1),
                    TEXT("2. If today is Sunday, yesterday was: ", tf2),
                    TEXT("3. If today is Thursday, tomorrow will be: ", tf3),
                    TEXT("4. If today is Wednesday, before yesterday was: ", tf4),
                    TEXT("5. If today is Friday, before yesterday was: ", tf5),
                    TEXT("6. If today is Tuesday, the day after Monday will be: ", tf6),
                    TEXT("7. If we are in September, the next month will be: ", tf7),
                    TEXT("8. If we are in October, the month after next month will be: ", tf8),
                    TEXT("9. If we are in December, last month was: ", tf9),
                    TEXT("10. The third month of the year is: ", tf10),
                    TEXT("11. If we are in June, the month before last month was: ", tf11),
                    TEXT("12. If we are in August, the month after next month will be: ", tf12),
                    TEXT("13. What is five plus five?", tf13),
                    TEXT("14. What is seven plus eight minus three?", tf14),
                    TEXT("15. What is the month of Christmas?", tf15),
                    TEXT("16. What is the first month of the year?", tf16),
                    TEXT("17. If today is Friday, the day after tomorrow will be: ", tf17),
                    TEXT("18. Eight plus eight is the same as eight mutiply by: ", tf18),
                    TEXT("19. 19. What is eighteen divided by two?", tf19),
                    TEXT("20. How many days does the month of April have? ", tf20),

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

    grade('wednesday', tf1);
    grade('saturday', tf2);
    grade('friday', tf3);
    grade('monday', tf4);
    grade('wednesday', tf5);
    grade('tuesday', tf6);
    grade('october', tf7);
    grade('december', tf8);
    grade('november', tf9);
    grade('march', tf10);
    grade('april', tf11);
    grade('october', tf12);
    grade('ten', tf13);
    grade('twelve', tf14);
    grade('december', tf15);
    grade('january', tf16);
    grade('sunday', tf17);
    grade('two', tf18);
    grade('nine', tf19);
    grade('thirty', tf20);
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