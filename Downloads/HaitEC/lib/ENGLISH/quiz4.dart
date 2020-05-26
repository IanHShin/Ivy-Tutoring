import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';

import 'package:firebase_admob/firebase_admob.dart';

void main() => runApp(quiz4());
class quiz4 extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}
class _myAppState extends State<quiz4> {

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
  final result = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FlutterPluginTts.setLanguage("en-US");
    FlutterPluginTts.setSpeechRate(0.3);
    return
      Scaffold(
          appBar: AppBar(title: Text("English"), backgroundColor: Colors.teal),
          body: ListView(
            scrollDirection: Axis.vertical,
            physics: AlwaysScrollableScrollPhysics(),
            shrinkWrap: true,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(height: ScreenUtil.instance.setHeight(1660),
                    child: PageView(
                      children: <Widget>[
                        Center(
                          child: Card(
                            child: Center(
                              child: Column( crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Which word describes the image?",
                                    style: TextStyle( fontSize: 20
                                    ),),
                                  Image.asset('images/shovel.png', height: 50,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Bolt"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Bolt");
                                          tf1.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Wrench"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Wrench");
                                          tf1.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Adjustable"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Adjustable");
                                          tf1.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Shovel"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Shovel");
                                          tf1.text=("✅");
                                        },
                                      ),
                                    ],
                                  ),
                                  TextField( textAlign: TextAlign.center,
                                    controller: tf1,
                                    enabled: false,
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text("1/16 Swipe..."),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Card(
                            child: Center(
                              child: Column( crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Which word describes the image?",
                                    style: TextStyle( fontSize: 20
                                    ),),
                                  Image.asset('images/wrench.png', height: 50,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Bolt"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Bolt");
                                          tf2.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Wrench"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Wrench");
                                          tf2.text=("✅");
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Adjustable"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Adjustable");
                                          tf2.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Shovel"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Shovel");
                                          tf2.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  TextField( textAlign: TextAlign.center,
                                    controller: tf2,
                                    enabled: false,
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text("2/16 Swipe..."),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Card(
                            child: Center(
                              child: Column( crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Which word describes the image?",
                                    style: TextStyle( fontSize: 20
                                    ),),
                                  Image.asset('images/screw.png', height: 50,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Screw"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Screw");
                                          tf3.text=("✅");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Wrench"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Wrench");
                                          tf3.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Adjustable"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Adjustable");
                                          tf3.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Shovel"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Shovel");
                                          tf3.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  TextField( textAlign: TextAlign.center,
                                    controller: tf3,
                                    enabled: false,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text("3/16 Swipe..."),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Card(
                            child: Center(
                              child: Column( crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Which word describes the image?",
                                    style: TextStyle( fontSize: 20
                                    ),),
                                  Image.asset('images/hammer.png', height: 50,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Screw"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Screw");
                                          tf4.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Wrench"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Wrench");
                                          tf4.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Axe"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Axe");
                                          tf4.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Hammer"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Hammer");
                                          tf4.text=("✅");
                                        },
                                      ),
                                    ],
                                  ),
                                  TextField( textAlign: TextAlign.center,
                                    controller: tf4,
                                    enabled: false,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text("4/16 Swipe..."),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Card(
                            child: Center(
                              child: Column( crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Which word describes the image?",
                                    style: TextStyle( fontSize: 20
                                    ),),
                                  Image.asset('images/screwdriver.png', height: 50,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Screw"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Screw");
                                          tf5.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Wrench"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Wrench");
                                          tf5.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Axe"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Axe");
                                          tf5.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Screwdriver"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Screwdriver");
                                          tf5.text=("✅");
                                        },
                                      ),
                                    ],
                                  ),
                                  TextField( textAlign: TextAlign.center,
                                    controller: tf5,
                                    enabled: false,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text("5/16 Swipe..."),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Card(
                            child: Center(
                              child: Column( crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Which word describes the image?",
                                    style: TextStyle( fontSize: 20
                                    ),),
                                  Image.asset('images/nail.png', height: 50,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Screw"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Screw");
                                          tf6.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Nail"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Nail");
                                          tf6.text=("✅");
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Axe"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Axe");
                                          tf6.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Hammer"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Hammer");
                                          tf6.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  TextField( textAlign: TextAlign.center,
                                    controller: tf6,
                                    enabled: false,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text("6/16 Swipe..."),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Card(
                            child: Center(
                              child: Column( crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Which word describes the image?",
                                    style: TextStyle( fontSize: 20
                                    ),),
                                  Image.asset('images/axe.png', height: 50,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Axe"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Axe");
                                          tf7.text=("✅");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Wrench"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Wrench");
                                          tf7.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Screwdriver"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Screwdriver");
                                          tf7.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Hammer"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Hammer");
                                          tf7.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  TextField( textAlign: TextAlign.center,
                                    controller: tf7,
                                    enabled: false,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text("7/16 Swipe..."),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Card(
                            child: Center(
                              child: Column( crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Which word describes the image?",
                                    style: TextStyle( fontSize: 20
                                    ),),
                                  Image.asset('images/pencil.png', height: 50,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Glasses"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Glasses");
                                          tf8.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Ladder"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Ladder");
                                          tf8.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Pencil"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Pencil");
                                          tf8.text=("✅");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Pen"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Pen");
                                          tf8.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  TextField( textAlign: TextAlign.center,
                                    controller: tf8,
                                    enabled: false,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text("8/16 Swipe..."),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Card(
                            child: Center(
                              child: Column( crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Which word describes the image?",
                                    style: TextStyle( fontSize: 20
                                    ),),
                                  Image.asset('images/glasses.png', height: 50,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Glasses"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Glasses");
                                          tf9.text=("✅");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Ladder"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Ladder");
                                          tf9.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Pencil"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Pencil");
                                          tf9.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Pen"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Pen");
                                          tf9.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  TextField( textAlign: TextAlign.center,
                                    controller: tf9,
                                    enabled: false,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text("9/16 Swipe..."),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Card(
                            child: Center(
                              child: Column( crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Which word describes the image?",
                                    style: TextStyle( fontSize: 20
                                    ),),
                                  Image.asset('images/pen.png', height: 50,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Glasses"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Glasses");
                                          tf10.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Ladder"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Ladder");
                                          tf10.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Pen"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Pen");
                                          tf10.text=("✅");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Pencil"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Pencil");
                                          tf10.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  TextField( textAlign: TextAlign.center,
                                    controller: tf10,
                                    enabled: false,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text("10/16 Swipe..."),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Card(
                            child: Center(
                              child: Column( crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Which word describes the image?",
                                    style: TextStyle( fontSize: 20
                                    ),),
                                  Image.asset('images/ladder.png', height: 50,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Glasses"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Glasses");
                                          tf11.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Ladder"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Ladder");
                                          tf11.text=("✅");
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Pencil"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Pencil");
                                          tf11.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Pen"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Pen");
                                          tf11.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  TextField( textAlign: TextAlign.center,
                                    controller: tf11,
                                    enabled: false,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text("11/16 Swipe..."),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Card(
                            child: Center(
                              child: Column( crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Which word describes the image?",
                                    style: TextStyle( fontSize: 20
                                    ),),
                                  Image.asset('images/pliers.png', height: 50,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Pliers"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Pliers");
                                          tf12.text=("✅");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Plunger"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Plunger");
                                          tf12.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Saw"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Saw");
                                          tf12.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Scissors"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Scissors");
                                          tf12.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  TextField( textAlign: TextAlign.center,
                                    controller: tf12,
                                    enabled: false,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text("12/16 Swipe..."),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Card(
                            child: Center(
                              child: Column( crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Which word describes the image?",
                                    style: TextStyle( fontSize: 20
                                    ),),
                                  Image.asset('images/saw.png', height: 50, width: 50,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Pliers"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Pliers");
                                          tf13.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Plunger"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Plunger");
                                          tf13.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Saw"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Saw");
                                          tf13.text=("✅");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Scissors"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Scissors");
                                          tf13.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  TextField( textAlign: TextAlign.center,
                                    controller: tf13,
                                    enabled: false,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text("13/16 Swipe..."),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Card(
                            child: Center(
                              child: Column( crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Which word describes the image?",
                                    style: TextStyle( fontSize: 20
                                    ),),
                                  Image.asset('images/scissors.png', height: 50,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Pliers"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Pliers");
                                          tf14.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Plunger"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Plunger");
                                          tf14.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Saw"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Saw");
                                          tf14.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Scissors"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Scissors");
                                          tf14.text=("✅");
                                        },
                                      ),
                                    ],
                                  ),
                                  TextField( textAlign: TextAlign.center,
                                    controller: tf14,
                                    enabled: false,
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text("14/16 Swipe..."),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Card(
                            child: Center(
                              child: Column( crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Which word describes the image?",
                                    style: TextStyle( fontSize: 20
                                    ),),
                                  Image.asset('images/plunger.png', height: 50,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Pliers"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Pliers");
                                          tf15.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Plunger"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Plunger");
                                          tf15.text=("✅");
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      GestureDetector(
                                        child: CARD("Saw"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Saw");
                                          tf15.text=("❌");
                                        },
                                      ),
                                      GestureDetector(
                                        child: CARD("Scissors"),
                                        onTap: () {
                                          FlutterPluginTts.speak("Scissors");
                                          tf15.text=("❌");
                                        },
                                      ),
                                    ],
                                  ),
                                  TextField( textAlign: TextAlign.center,
                                    controller: tf15,
                                    enabled: false,
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text("15/16 Swipe..."),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

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
                        
                        Center(
                          child: Card(
                            child: Center(
                              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("QUIZ 4", style: TextStyle(
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
                                    onTap: (){
                                      count = 0;
                                      if (tf1.text=="✅")
                                        count++;
                                      if (tf2.text=="✅")
                                        count++;
                                      if (tf3.text=="✅")
                                        count++;
                                      if (tf4.text=="✅")
                                        count++;
                                      if (tf5.text=="✅")
                                        count++;
                                      if (tf6.text=="✅")
                                        count++;
                                      if (tf7.text=="✅")
                                        count++;
                                      if (tf8.text=="✅")
                                        count++;
                                      if (tf9.text=="✅")
                                        count++;
                                      if (tf10.text=="✅")
                                        count++;
                                      if (tf11.text=="✅")
                                        count++;
                                      if (tf12.text=="✅")
                                        count++;
                                      if (tf13.text=="✅")
                                        count++;
                                      if (tf14.text=="✅")
                                        count++;
                                      if (tf15.text=="✅")
                                        count++;

                                      F_total = count + _total;

                                      result.text=("Your Score: "+ F_total.toString() +"/20");
                                      
                                    },
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
                              ),
                            ),
                          ),
                        ),
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
}

class CARD extends StatelessWidget {
  Image img;
  final String text;
  final Color col = Colors.white;
  TextEditingController tf;

  CARD(this.text);
  @override
  Widget build(BuildContext context) {
    return
      Container(
      width: ScreenUtil.instance.setWidth(520),
      height: ScreenUtil.instance.setHeight(500),
      child: Card(
          color: col,
          child: new Container(
            alignment: Alignment.center,
            padding: new EdgeInsets.all(0.0),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(text),
              ],
            ),
          ),
          elevation: 2),
    );
  }
}
