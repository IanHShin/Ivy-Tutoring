import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';

void main() => runApp(pratik_veb_iregilye());

class pratik_veb_iregilye extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<pratik_veb_iregilye> {
  @override
  void initState() {
    super.initState();
    FirebaseAdMob.instance.initialize(appId: 'ca-app-pub-5567410113651073~4007866614');
    _bannerAd = createBannerAd()
      ..load
      ..show();
    _interstitialAd = createInterstitialAd()
      ..load();
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
            "\nEGZÈSIS SOU VÈB IREGILYE",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 30.0,
              color: Colors.teal,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Mete vèb nan parantèz yo nan tan pase.\n",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 17, color: Colors.blue),
          ),
          new Container(
              padding: EdgeInsets.all(5.0),
              child: new Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TEXT('1. I____ an apple last night. (Eat)', tf1),
                    TEXT("2. She____ my sister's car yesterday. (Drive)", tf2),
                    TEXT("3. The dog____ him. (Bite)", tf3),
                    TEXT("4. Jeeyou____ new shoes last night. (Buy)", tf4),
                    TEXT("5. Willy____ to study more because he was failing. (Begin)", tf5),
                    TEXT("6. You____ to the movies last night. (Go)", tf6),
                    TEXT("7. She____ my laptop last month. (Break)", tf7),
                    TEXT("8. Kevin____ to Winnie yesterday night. (Talk)", tf8),
                    TEXT("9. Myrlande____ me an orange. (Give)", tf9),
                    TEXT("10. The last time I saw you ____ in January. (Be)", tf10),
                    TEXT("11. Alyssa likes milk, she____ a lot of it this morning. (Drink).", tf11),
                    TEXT("12. Yesterday, I____ home late from the party. (Come)", tf12),
                    TEXT("13. Niko is amazing. He____ a nice picture on his notebook. (Draw)", tf13),
                    TEXT("14. She____ to bring me the money. (Forget)", tf14),
                    TEXT("15. Djino____ a really good job today. (Do)", tf15),
                    TEXT("16. Nixon____ me for what I did. (Forgive)", tf16),
                    TEXT("17. She____ a lot of stuff for me. (Bring)", tf17),
                    TEXT("18. I____ see the lies in her eyes. (Can)", tf18),
                    TEXT("19. Jenny____ a lot of time off. (Take)", tf19),
                    TEXT("20. I knew it, but I____ not to tell you. (Choose)", tf20),

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
    _interstitialAd.show();
    grade('ate', tf1);
    grade('drove', tf2);
    grade('bit', tf3);
    grade('bought', tf4);
    grade('began', tf5);
    grade('went', tf6);
    grade('broke', tf7);
    grade('talked', tf8);
    grade('gave', tf9);
    grade('was', tf10);
    grade('drank', tf11);
    grade('came', tf12);
    grade('drew', tf13);
    grade('forgot', tf14);
    grade('did', tf15);
    grade('forgave', tf16);
    grade('brought', tf17);
    grade('could', tf18);
    grade('took', tf19);
    grade('chose', tf20);
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