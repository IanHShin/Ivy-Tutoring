import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_plugin_tts/flutter_plugin_tts.dart';
import 'package:firebase_admob/firebase_admob.dart';

void main() => runApp(quiz5());
class quiz5 extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}
class _myAppState extends State<quiz5> {

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
                        CENTER('images/plunger.png', tf1, tf1a, "1/16 swipe..."),
                        CENTER("images/hammer.png", tf2, tf2a, "2/16 swipe..."),
                        CENTER("images/shovel.png", tf3, tf3a, "3/16 swipe..."),
                        CENTER("images/saw.png", tf4, tf4a, "4/16 swipe..."),
                        CENTER("images/screwdriver.png", tf5, tf5a, "5/16 swipe..."),
                        CENTER("images/nail.png", tf6, tf6a, "6/16 swipe..."),
                        CENTER("images/axe.png", tf7, tf7a, "7/16 swipe..."),
                        CENTER("images/pencil.png", tf8, tf8a, "8/16 swipe..."),
                        CENTER("images/pen.png", tf9, tf9a, "9/16 swipe..."),
                        CENTER("images/glasses.png", tf10, tf10a, "10/16 swipe..."),
                        CENTER("images/ladder.png", tf11, tf11a, "11/16 swipe..."),
                        CENTER("images/pliers.png", tf12, tf12a, "12/16 swipe..."),
                        CENTER("images/screw.png", tf13, tf13a, "13/16 swipe..."),
                        CENTER("images/scissors.png", tf14, tf14a, "14/16 swipe..."),
                        CENTER("images/wrench.png", tf15, tf15a, "15/16 swipe..."),

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
                            Text("QUIZ 5", style: TextStyle(
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
  void grade (TextEditingController tf, String text, TextEditingController tfa){
    if (Trim(tf.text) == text) {
      tfa.text = "✅";
    } else
      tfa.text = "❌";
  }

  verifye() {
    RewardedVideoAd.instance.show();
    grade(tf1, "plunger", tf1a);
    grade(tf2, "hammer", tf2a);
    grade(tf3, "shovel", tf3a);
    grade(tf4, "saw", tf4a);
    grade(tf5, "screwdriver", tf5a);
    grade(tf6, "nail", tf6a);
    grade(tf7, "axe", tf7a);
    grade(tf8, "pencil", tf8a);
    grade(tf9, "pen", tf9a);
    grade(tf10, "glasses", tf10a);
    grade(tf11, "ladder", tf11a);
    grade(tf12, "pliers", tf12a);
    grade(tf13, "screw", tf13a);
    grade(tf14, "scissors", tf14a);
    grade(tf15, "wrench", tf15a);

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


