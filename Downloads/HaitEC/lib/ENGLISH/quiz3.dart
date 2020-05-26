import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:firebase_admob/firebase_admob.dart';

void main() => runApp(quiz3());
class quiz3 extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}
class _myAppState extends State<quiz3> {

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

  final controller = PageController();
  int count = 0;
  int _total=0;
  int F_total = 0;

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



  @override
  Widget build(BuildContext context) {
    FlutterPluginTts.setLanguage("en-US");
    FlutterPluginTts.setSpeechRate(0.3);
    return
      Scaffold(
          appBar: AppBar(title: Text("English"), backgroundColor: Colors.teal),
          body:
          ListView(
            scrollDirection: Axis.vertical,
            physics: AlwaysScrollableScrollPhysics(),
            shrinkWrap: true,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(padding: EdgeInsets.all(2),
                    height: ScreenUtil.instance.setHeight(1660),
                    child: PageView(
                      children: <Widget>[
                        CENTER('images/head.png', tf1, tf1a, "1/16 swipe..."),
                        CENTER("images/neck.png", tf2, tf2a, "2/16 swipe..."),
                        CENTER("images/nose.png", tf3, tf3a, "3/16 swipe..."),
                        CENTER("images/mouth.png", tf4, tf4a, "4/16 swipe..."),
                        CENTER("images/lips.png", tf5, tf5a, "5/16 swipe..."),
                        CENTER("images/finger.png", tf6, tf6a, "6/16 swipe..."),
                        CENTER("images/hair.png", tf7, tf7a, "7/16 swipe..."),
                        CENTER("images/teeth.png", tf8, tf8a, "8/16 swipe..."),
                        CENTER("images/leg.png", tf9, tf9a, "9/16 swipe..."),
                        CENTER("images/lungs.png", tf10, tf10a, "10/16 swipe..."),
                        CENTER("images/heart.png", tf11, tf11a, "11/16 swipe..."),
                        CENTER("images/hand.png", tf12, tf12a, "12/16 swipe..."),
                        CENTER("images/tongue.png", tf13, tf13a, "13/16 swipe..."),
                        CENTER("images/arm.png", tf14, tf14a, "14/16 swipe..."),
                        CENTER("images/feet.png", tf15, tf15a, "15/16 swipe..."),

                        Column( mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("This video is worth 5 points.", style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),),
                            Text("Gade video sa net pou 5 pwen.", style: TextStyle(
                              fontSize: 20.0,
                            ),),
                            SizedBox(height: 40),
                            TextField( textAlign: TextAlign.center,
                              enabled: false,
                              style: TextStyle(
                                fontSize: 35,
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                RewardedVideoAd.instance.show();
                              },
                              child: Container(
                                child: Center(
                                    child: Text(
                                      'WATCH VIDEO NOW',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF212121),
                                      ),
                                    )),
                                color: Color(0xFFFFC107),
                                margin: EdgeInsets.only(top: 10.0),
                                width: 300,
                                height: 80.0,
                              ),
                            ),
                            FlatButton(
                              onPressed: () {},
                              child: Text("16/16 Swipe..."),
                            ),
                          ],
                        ),

                        Column( mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("QUIZ 3", style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF212121),
                            ),),
                            SizedBox(height: 40),
                            TextField( textAlign: TextAlign.center,
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
                                      'GET RESULT',
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
                  SizedBox(height: 40),
                ],
              )
            ],
          )
      );
  }

  String Trim(String a) {
    return a.toString().trim().toLowerCase().split(" ").join("");
  }

  verifye() {

    if (Trim(tf1.text) == 'head') {
      tf1a.text = "✅";
    } else
      tf1a.text = "❌";

    if (Trim(tf2.text) == "neck") {
      tf2a.text = "✅";
    } else
      tf2a.text = "❌";

    if (Trim(tf3.text) == "nose") {
      tf3a.text = "✅";
    } else
      tf3a.text = "❌";

    if (Trim(tf4.text) == "mouth") {
      tf4a.text = "✅";
    }
    else
      tf4a.text ="❌";

    if (Trim(tf5.text) == "lips") {
      tf5a.text = "✅";
    } else
      tf5a.text = "❌";

    if (Trim(tf6.text) == "finger") {
      tf6a.text = "✅";
    } else
      tf6a.text = "❌";

    if (Trim(tf7.text) == "hair") {
      tf7a.text = "✅";
    } else
      tf7a.text = "❌";

    if (Trim(tf8.text) == "teeth") {
      tf8a.text = "✅";
    } else
      tf8a.text = "❌";

    if (Trim(tf9.text) == "leg") {
      tf9a.text = "✅";
    } else
      tf9a.text = "❌";

    if (Trim(tf10.text) == "lungs") {
      tf10a.text = "✅";
    } else
      tf10a.text = "❌";

    if (Trim(tf11.text) == "heart") {
      tf11a.text = "✅";
    } else
      tf11a.text = "❌";

    if (Trim(tf12.text) == "hand") {
      tf12a.text = "✅";
    } else
      tf12a.text = "❌";

    if (Trim(tf13.text) == "tongue") {
      tf13a.text = "✅";
    } else
      tf13a.text = "❌";

    if (Trim(tf14.text) == "arm") {
      tf14a.text = "✅";
    } else
      tf14a.text = "❌";

    if (Trim(tf15.text) == "feet") {
      tf15a.text = "✅";
    } else
      tf15a.text = "❌";

    count = 0;
    if (tf1a.text=="✅")
      count++;
    if (tf2a.text=="✅")
      count++;
    if (tf3a.text=="✅")
      count++;
    if (tf4a.text=="✅")
      count++;
    if (tf5a.text=="✅")
      count++;
    if (tf6a.text=="✅")
      count++;
    if (tf7a.text=="✅")
      count++;
    if (tf8a.text=="✅")
      count++;
    if (tf9a.text=="✅")
      count++;
    if (tf10a.text=="✅")
      count++;
    if (tf11a.text=="✅")
      count++;
    if (tf12a.text=="✅")
      count++;
    if (tf13a.text=="✅")
      count++;
    if (tf14a.text=="✅")
      count++;
    if (tf15a.text=="✅")
      count++;

    F_total = count + _total;

    result.text=("Your Score: "+ F_total.toString() +"/20");

  }
}

class CENTER extends StatelessWidget {
  final String img, swipe;
  final Color col = Colors.white;
  TextEditingController tf, tfa;

  CENTER(this.img, this.tf, this.tfa, this.swipe);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column( crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text("Write the approprite word for the image .", style: TextStyle(
              fontSize: 25, fontFamily: 'Raleway', color: Colors.teal,
            ),),
          ),

          SizedBox(height: 30),

          Container(
            child: Image.asset(img, height: 70, width: 70),
          ),
          SizedBox(height: 20),
          TextField(
            controller: tf,
            autofocus: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide:
                  BorderSide(color: Colors.amberAccent)),
              hintText: 'Repons',
              labelStyle:
              const TextStyle(color: Colors.amberAccent),
            ),
          ),
          TextField( textAlign: TextAlign.center,
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
      ) ,
    );
  }
}


