import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:firebase_admob/firebase_admob.dart';

void main() => runApp(s_tes_odyo1());

class s_tes_odyo1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<s_tes_odyo1> {
  final controller = PageController();
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

  final tf1a = TextEditingController();
  final tf2a = TextEditingController();
  final tf3a = TextEditingController();
  final tf4a = TextEditingController();
  final tf5a = TextEditingController();
  final tf6a = TextEditingController();
  final tf7a = TextEditingController();
  final tf8a = TextEditingController();
  final tf9a = TextEditingController();
  final tf10a = TextEditingController();
  final tf11a = TextEditingController();
  final tf12a = TextEditingController();
  final tf13a = TextEditingController();
  final tf14a = TextEditingController();
  final tf15a = TextEditingController();
  final result = TextEditingController();

  String tf1_text = "enero";
  String tf2_text = "abril";
  String tf3_text = "marzo";
  String tf4_text = "lunes";
  String tf5_text = "domingo";
  String tf6_text = "septiembre";
  String tf7_text = "mayo";
  String tf8_text = "viernes";
  String tf9_text = "diciembre";
  String tf10_text = "junio";
  String tf11_text = "jueves";
  String tf12_text = "agosto";
  String tf13_text = "febrero";
  String tf14_text = "julio";
  String tf15_text = "martes";

  void initState() {
    FirebaseAdMob.instance
        .initialize(appId: 'ca-app-pub-5567410113651073~4007866614');
    _bannerAd = createBannerAd()..load();
    _interstitialAd = createInterstitialAd()..load();
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
  void hgg() {
    super.initState();
    FirebaseAdMob.instance
        .initialize(appId: 'ca-app-pub-5567410113651073~4007866614');
    _bannerAd = createBannerAd()..load();
    RewardedVideoAd.instance.listener =
        (RewardedVideoAdEvent event, {String rewardType, int rewardAmount}) {
      print("RewardedVideoAd event $event");
      if (event == RewardedVideoAdEvent.rewarded) {
        setState(() {
          count += 2;
        });
      }
    };
  }

  @override
  void dispose() {
    _bannerAd.dispose();
    _interstitialAd.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title: Text("English"), backgroundColor: Colors.teal),
        body: ListView(
          padding: EdgeInsets.all(10),
          scrollDirection: Axis.vertical,
          physics: AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: ScreenUtil.instance.setHeight(1660),
                  child: PageView(
                    children: <Widget>[
                      CENTER(tf1_text, tf1, tf1a, "1/15 swipe..."),
                      CENTER(tf2_text, tf2, tf2a, "2/15 swipe..."),
                      CENTER(tf3_text, tf3, tf3a, "3/15 swipe..."),
                      CENTER(tf4_text, tf4, tf4a, "4/15 swipe..."),
                      CENTER(tf5_text, tf5, tf5a, "5/15 swipe..."),
                      CENTER(tf6_text, tf6, tf6a, "6/15 swipe..."),
                      CENTER(tf7_text, tf7, tf7a, "7/15 swipe..."),
                      CENTER(tf8_text, tf8, tf8a, "8/15 swipe..."),
                      CENTER(tf9_text, tf9, tf9a, "9/15 swipe..."),
                      CENTER(tf10_text, tf10, tf10a, "10/15 swipe..."),
                      CENTER(tf11_text, tf11, tf11a, "11/15 swipe..."),
                      CENTER(tf12_text, tf12, tf12a, "12/15 swipe..."),
                      CENTER(tf13_text, tf13, tf13a, "13/15 swipe..."),
                      CENTER(tf14_text, tf14, tf14a, "14/15 swipe..."),
                      CENTER(tf15_text, tf15, tf15a, "15/15 swipe..."),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "PRUEBA DE AUDIO 1",
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF212121),
                            ),
                          ),
                          SizedBox(height: 40),
                          TextField(
                            textAlign: TextAlign.center,
                            controller: result,
                            enabled: false,
                            style: TextStyle(
                              fontSize: 35,
                            ),
                          ),
                          GestureDetector(
                            onTap: (verifye),
                            child: Container(
                              child: Center(
                                  child: Text(
                                'OBTENER RESULTADO',
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
                      )
                    ],
                    scrollDirection: Axis.horizontal,
                    controller: controller,
                  ),
                ),
              ],
            )
          ],
        ));
  }

  String Trim(String a) {
    return a.toString().trim().toLowerCase().split(" ").join("");
  }

  verifye() {
    if (Trim(tf1.text) == tf1_text) {
      tf1a.text = "✅";
    } else
      tf1a.text = "❌";

    if (Trim(tf2.text) == tf2_text) {
      tf2a.text = "✅";
    } else
      tf2a.text = "❌";

    if (Trim(tf3.text) == tf3_text) {
      tf3a.text = "✅";
    } else
      tf3a.text = "❌";

    if (Trim(tf4.text) == tf4_text) {
      tf4a.text = "✅";
    } else
      tf4a.text = "❌";

    if (Trim(tf5.text) == tf5_text) {
      tf5a.text = "✅";
    } else
      tf5a.text = "❌";

    if (Trim(tf6.text) == tf6_text) {
      tf6a.text = "✅";
    } else
      tf6a.text = "❌";

    if (Trim(tf7.text) == tf7_text) {
      tf7a.text = "✅";
    } else
      tf7a.text = "❌";

    if (Trim(tf8.text) == tf8_text) {
      tf8a.text = "✅";
    } else
      tf8a.text = "❌";

    if (Trim(tf9.text) == tf9_text) {
      tf9a.text = "✅";
    } else
      tf9a.text = "❌";

    if (Trim(tf10.text) == tf10_text) {
      tf10a.text = "✅";
    } else
      tf10a.text = "❌";

    if (Trim(tf11.text) == tf11_text) {
      tf11a.text = "✅";
    } else
      tf11a.text = "❌";

    if (Trim(tf12.text) == tf12_text) {
      tf12a.text = "✅";
    } else
      tf12a.text = "❌";

    if (Trim(tf13.text) == tf13_text) {
      tf13a.text = "✅";
    } else
      tf13a.text = "❌";

    if (Trim(tf14.text) == tf14_text) {
      tf14a.text = "✅";
    } else
      tf14a.text = "❌";

    if (Trim(tf15.text) == tf15_text) {
      tf15a.text = "✅";
    } else
      tf15a.text = "❌";

    count = 0;
    if (tf1a.text == "✅") count++;
    if (tf2a.text == "✅") count++;
    if (tf3a.text == "✅") count++;
    if (tf4a.text == "✅") count++;
    if (tf5a.text == "✅") count++;
    if (tf6a.text == "✅") count++;
    if (tf7a.text == "✅") count++;
    if (tf8a.text == "✅") count++;
    if (tf9a.text == "✅") count++;
    if (tf10a.text == "✅") count++;
    if (tf11a.text == "✅") count++;
    if (tf12a.text == "✅") count++;
    if (tf13a.text == "✅") count++;
    if (tf14a.text == "✅") count++;
    if (tf15a.text == "✅") count++;

    result.text = ("Your Score: " + count.toString() + "/15");
  }
}

class CENTER extends StatelessWidget {
  final String text, swipe;
  final Color col = Colors.white;
  TextEditingController tf, tfa;

  CENTER(this.text, this.tf, this.tfa, this.swipe);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "ESCRIBE LO QUE OYES",
            style: TextStyle(
                fontSize: 25, fontFamily: 'Raleway', color: Colors.teal),
          ),
          SizedBox(height: 100),
          TextField(
            controller: tf,
            autofocus: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.amberAccent)),
              hintText: 'Repons',
              labelStyle: const TextStyle(color: Colors.amberAccent),
              suffixIcon: IconButton(
                icon: Icon(Icons.volume_up),
                onPressed: () {
                  FlutterPluginTts.speak(text);
                },
                color: Colors.black,
              ),
            ),
          ),
          TextField(
            textAlign: TextAlign.center,
            controller: tfa,
            enabled: false,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text(swipe),
          ),
        ],
      ),
    );
  }
}
